package com.website.dataAccess;

import com.website.entities.Person;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class PersonDao {
    @Autowired
    PersonRepository personRepo;

    @Transactional
    public Person save(Person p){
        return personRepo.save(p);
    }

    public Iterable<Person> findAll(){
        return personRepo.findAll();
    }
}
