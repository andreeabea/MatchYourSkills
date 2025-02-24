package com.website.repositories;

import com.website.entities.Skill;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SkillRepository extends MongoRepository<Skill, String> {

    public Skill findByName(String name);
}
