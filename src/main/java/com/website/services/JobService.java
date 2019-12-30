package com.website.services;

import com.website.entities.Skill;
import com.website.repositories.JobRepository;
import com.website.entities.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashSet;

@Service
public class JobService {

    @Autowired
    JobRepository jobRepo;

    @Transactional
    public Job save(Job p){
        return jobRepo.save(p);
    }

    public Iterable<Job> findAll(){
        return jobRepo.findAll();
    }

    public Job addSkill(String jobName, Skill s)
    {
        Job j = jobRepo.findByName(jobName);
        if(j.getSkills() == null)
            j.setSkills(new HashSet<Skill>());
        j.getSkills().add(s);
        return jobRepo.save(j);
    }
}
