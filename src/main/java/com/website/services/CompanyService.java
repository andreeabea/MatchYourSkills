package com.website.services;

import com.website.entities.Person;
import com.website.repositories.CompanyRepository;
import com.website.entities.Company;
import org.bson.types.Binary;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CompanyService {

    @Autowired
    CompanyRepository companyRepo;

    @Transactional
    public Company save(Company p){
        p.setPassword(new BCryptPasswordEncoder().encode(p.getPassword()));
        return companyRepo.save(p);
    }

    public Iterable<Company> findAll(){
        return companyRepo.findAll();
    }

    public Company findById(String id)
    {
        return companyRepo.findById(id).orElse(null);
    }

    public Company findByName(String name)
    {
        if (name == null)
            return null;
        return companyRepo.findByName(name);
    }

    public Company findByEmail(String email){
        if (email == null)
            return null;
        return companyRepo.findByEmail(email);
    }

    public Company editCompany(Company c, Binary image, String name, String description,
                              String phone, String website)
    {
        if(image!=null)
        {
            c.setImage(image);
        }
        if(!name.equals(""))
        {
            c.setName(name);
        }
        if(!description.equals(""))
        {
            c.setDescription(description);
        }
        if(!phone.equals(""))
        {
            c.setPhone(phone);
        }
        if(!website.equals(""))
        {
            c.setWebsite(website);
        }
        return companyRepo.save(c);
    }

    public void removeCompany(Company c)
    {
        if(c!=null)
        {
            companyRepo.delete(c);
        }
    }

    public Company editManager(Company c, Person p, Binary image, String name, String description,
                               String phone, String address, String email)
    {
        if(image!=null)
        {
            p.setImage(image);
        }
        if(!name.equals(""))
        {
            p.setName(name);
        }
        if(!description.equals(""))
        {
            p.setDescription(description);
        }
        if(!phone.equals(""))
        {
            p.setPhone(phone);
        }
        if(!address.equals(""))
        {
            p.setAddress(address);
        }
        if(!email.equals(""))
        {
            p.setEmail(email);
        }
        c.setManager(p);
        return companyRepo.save(c);
    }
}
