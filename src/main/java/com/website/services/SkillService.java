package com.website.services;

import com.website.repositories.SkillRepository;
import com.website.entities.Skill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SkillService {

    @Autowired
    SkillRepository skillRepo;

    public Skill save(Skill p){
        return skillRepo.save(p);
    }

    public Iterable<Skill> findAll(){
        return skillRepo.findAll();
    }

    public Skill findByName(String name)
    {
        if (name == null)
            return null;
        return skillRepo.findByName(name);
    }
}
