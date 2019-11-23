package com.website.dataAccess;

import com.website.dataAccess.repositories.SkillRepository;
import com.website.entities.Skill;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SkillDao {

    @Autowired
    SkillRepository skillRepo;

    public Skill save(Skill p){
        return skillRepo.save(p);
    }

    public Iterable<Skill> findAll(){
        return skillRepo.findAll();
    }
}
