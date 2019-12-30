package com.website.services;

import com.website.repositories.CompanyRepository;
import com.website.entities.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CompanyService {

    @Autowired
    CompanyRepository companyRepo;

    @Transactional
    public Company save(Company p){
        return companyRepo.save(p);
    }

    public Iterable<Company> findAll(){
        return companyRepo.findAll();
    }

    public Company findByName(String name)
    {
        if (name == null)
            return null;
        return companyRepo.findByName(name);
    }
}
