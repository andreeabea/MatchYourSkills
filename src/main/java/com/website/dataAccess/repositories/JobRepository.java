package com.website.dataAccess.repositories;

import com.website.entities.Job;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JobRepository extends MongoRepository<Job,String> {
}
