package com.website.services;

import com.website.entities.Job;
import com.website.entities.Skill;
import com.website.repositories.PersonRepository;
import com.website.entities.Person;
import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class PersonService {
    @Autowired
    PersonRepository personRepo;

    @Transactional
    public Person save(Person p){
        p.setPassword(new BCryptPasswordEncoder().encode(p.getPassword()));
        return personRepo.save(p);
    }

    public Person findByEmail(String email){
        if (email == null)
            return null;
        return personRepo.findByEmail(email);
    }

    public Iterable<Person> findAll(){
        return personRepo.findAll();
    }

    public Person addSkill(String email, Skill s)
    {
        Person p = personRepo.findByEmail(email);
        if(p.getSkills() == null)
            p.setSkills(new HashSet<Skill>());

        boolean found = false;
        for(Skill skill : p.getSkills())
        {
            if(skill.getName().equals(s.getName()))
            {
                skill.setPercentage(s.getPercentage());
                found = true;
                break;
            }
        }
        if(found == false)
        {
            p.getSkills().add(s);
        }
        return personRepo.save(p);
    }

    public Person removeSkill(String email, Skill s)
    {
        Person p = personRepo.findByEmail(email);
        Set<Skill> skillSet = p.getSkills();
        if(skillSet!=null)
        {
            if(skillSet.stream().anyMatch(x->x.getName().equals(s.getName())))
            {
                skillSet.remove(s);
                p.setSkills(skillSet);
            }
        }
        return personRepo.save(p);
    }

    public Person addJob(String email, Job j)
    {
        Person p = personRepo.findByEmail(email);
        if(p.getJobs() == null)
            p.setJobs(new ArrayList<Job>());

        if(!p.getJobs().contains(j))
        {
            p.addJob(j);
        }
        //j.addObserver(p);
        return personRepo.save(p);
    }

    public Person saveCurrentJob(Person p, Job j)
    {
        p.setCurrentJob(j);
        return personRepo.save(p);
    }

    public Person editPerson(Person p, Binary image, String name, String description,
                             String phone, String address)
    {
        if(image!=null)
        {
            p.setImage(image);
        }
        if(!name.equals(""))
        {
            p.setName(name);
        }
        if(!description.equals(""))
        {
            p.setDescription(description);
        }
        if(!phone.equals(""))
        {
            p.setPhone(phone);
        }
        if(!address.equals(""))
        {
            p.setAddress(address);
        }
        return personRepo.save(p);
    }

    public Person findById(String id)
    {
        return personRepo.findById(id).orElse(null);
    }

    public void removePerson(Person p)
    {
        if(p!=null)
        {
            personRepo.delete(p);
        }
    }

    public void updateJobs(Person p, List<Job> jobs)
    {
        if(p!=null && jobs!=null)
        {
            p.setJobs(jobs);
            personRepo.save(p);
        }
    }

    public Person updateCV(String id, Binary image)
    {
        if(image!=null && id!=null)
        {
            Person p = personRepo.findById(id).orElse(null);
            if(image!=null)
            {
                p.setCV(image);
            }
            return personRepo.save(p);
        }
        return null;
    }

    public List<Person> findPeople(String search, String searchType, String jobId)
    {
        SearchFilter searchFilter = SearchFilter.getSearchFilter();
        String filteredResult = searchFilter.filterSearch(search);

        if(filteredResult==null || filteredResult.equals(""))
        {
            return null;
        }

        List<Person> foundPeople = new ArrayList<>();
        foundPeople.addAll(personRepo.findByNameLike(filteredResult));

        if(searchType.equals("people") && jobId!=null)
        {
            List<Person> foundPeople2 = new ArrayList<>();
            if(foundPeople!=null)
            {
                for(Person p : foundPeople)
                {
                    if(p.getJobs()!=null)
                    {
                        for(Job j: p.getJobs())
                        {
                            if(!j.getId().equals(jobId))
                            {
                                  foundPeople2.add(p);
                            }
                        }
                    }
                }
                foundPeople =foundPeople2;
            }
        }
        return foundPeople.stream().filter(SearchFilter.distinctById(Person::getId)).collect(Collectors.toList());
    }
}
