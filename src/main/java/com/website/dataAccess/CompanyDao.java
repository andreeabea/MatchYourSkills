package com.website.dataAccess;

import com.website.dataAccess.repositories.CompanyRepository;
import com.website.entities.Company;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CompanyDao {

    @Autowired
    CompanyRepository companyRepo;

    @Transactional
    public Company save(Company p){
        return companyRepo.save(p);
    }

    public Iterable<Company> findAll(){
        return companyRepo.findAll();
    }
}
