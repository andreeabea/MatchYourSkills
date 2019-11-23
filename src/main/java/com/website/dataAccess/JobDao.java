package com.website.dataAccess;

import com.website.dataAccess.repositories.JobRepository;
import com.website.entities.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class JobDao {

    @Autowired
    JobRepository jobRepo;

    @Transactional
    public Job save(Job p){
        return jobRepo.save(p);
    }

    public Iterable<Job> findAll(){
        return jobRepo.findAll();
    }
}
