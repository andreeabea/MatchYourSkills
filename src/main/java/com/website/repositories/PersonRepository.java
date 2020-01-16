package com.website.repositories;

import com.website.entities.Job;
import com.website.entities.Person;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PersonRepository extends MongoRepository<Person, String> {

    Person findByEmail(String email);

    public List<Person> findByNameLike(String likeName);

//    public List<Job> findByEmployerIdLike(String likeEmployerId);
//
//    public List<Job> findByDescriptionLike(String likeDescription);
//
//    public List<Job> findByIndustryLike(String likeIndustry);
//
//    public List<Job> findByLocationLike(String likeLocation);

}
