package com.website.services;

import com.website.entities.Skill;
import com.website.repositories.PersonRepository;
import com.website.entities.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashSet;

@Service
public class PersonService {
    @Autowired
    PersonRepository personRepo;

    @Transactional
    public Person save(Person p){
        return personRepo.save(p);
    }

    public Person getByEmail(String email){
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

}
