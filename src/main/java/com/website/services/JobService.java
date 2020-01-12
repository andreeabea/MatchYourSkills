package com.website.services;

import com.website.entities.ExperienceLevel;
import com.website.entities.Person;
import com.website.entities.Skill;
import com.website.repositories.JobRepository;
import com.website.entities.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;
import java.util.stream.Collectors;

@Service
public class JobService {

    @Autowired
    JobRepository jobRepo;
    @Autowired
    PersonService personService;
    @Autowired
    SkillService skillService;

    @Transactional
    public Job save(Job p){
        return jobRepo.save(p);
    }

    public Iterable<Job> findAll(){
        return jobRepo.findAll();
    }

    public Job addSkill(String jobId, Skill s)
    {
        Job j = jobRepo.findById(jobId).orElse(null);
        if(j.getSkills() == null)
            j.setSkills(new HashSet<Skill>());
        j.getSkills().add(s);
        return jobRepo.save(j);
    }

    public Job findById(String id)
    {
        return jobRepo.findById(id).orElse(null);
    }

    public List<Job> findByCompany(String companyId)
    {
        List<Job> jobs = jobRepo.findAll().stream().filter(x->x.getEmployerId().equals(companyId)).collect(Collectors.toList());
        return jobs;
    }

    public void removeJob(String id)
    {
        Job j = jobRepo.findById(id).orElse(null);
        if(j!=null)
        {
            List<Person> personList = new ArrayList<>();
            personService.findAll().forEach(x->personList.add(x));
            for(Person p : personList)
            {
                List<Job> jobs = p.getJobs();
                if(jobs!=null)
                {
                    List<Job> jobs2 = jobs.stream().filter(x->(!x.getId().equals(j.getId()))).collect(Collectors.toList());
                    personService.updateJobs(p,jobs2);
                }
            }
            jobRepo.delete(j);
        }
    }

    public Job editJob(String job, String name, String experienceLevel, String location,
                       String industry, String description)
    {
        Job j = jobRepo.findById(job).orElse(null);
        if(!name.equals(""))
        {
            j.setName(name);
        }
        if(!experienceLevel.equals(""))
        {
            j.setExperienceLevel(ExperienceLevel.valueOf(experienceLevel));
        }
        if(!location.equals(""))
        {
            j.setLocation(location);
        }
        if(!industry.equals(""))
        {
            j.setIndustry(industry);
        }
        if(!description.equals(""))
        {
            j.setDescription(description);
        }
        List<Person> personList = new ArrayList<>();
        personService.findAll().forEach(x->personList.add(x));
        for(Person p : personList)
        {
            List<Job> jobs = p.getJobs();
            if(jobs!=null)
            {
                List<Job> jobs2 = jobs.stream().filter(x->(!x.getId().equals(j.getId()))).collect(Collectors.toList());
                jobs2.add(j);
                personService.updateJobs(p,jobs2);
            }
        }
        return jobRepo.save(j);
    }

    public void removeSkill(String skill, Job job)
    {
        Set<Skill> skills = job.getSkills();
        if(skills!=null)
        {
            skills.remove(skillService.findByName(skill));
            job.setSkills(skills);
            jobRepo.save(job);
        }
    }
}
