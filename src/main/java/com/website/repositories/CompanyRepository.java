package com.website.repositories;

import com.website.entities.Company;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CompanyRepository extends MongoRepository<Company,String> {

    public Company findByName(String name);
    public Company findByEmail(String email);

    public List<Company> findByNameLike(String nameLike);
}
