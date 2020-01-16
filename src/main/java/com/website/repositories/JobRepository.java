package com.website.repositories;

import com.website.entities.Job;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface JobRepository extends MongoRepository<Job,String> {

    public Job findByName(String name);

    public List<Job> findByNameLike(String likeName);

    public List<Job> findByEmployerIdLike(String likeEmployerId);

    public List<Job> findByDescriptionLike(String likeDescription);

    public List<Job> findByIndustryLike(String likeIndustry);

    public List<Job> findByLocationLike(String likeLocation);

}
