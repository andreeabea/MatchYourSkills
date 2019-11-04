package com.website.dataAccess;

import com.website.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserDao {
    @Autowired
    UserRepository userRepo;

    public User save(User user){
        return userRepo.save(user);
    }

    public Iterable<User> findAll(){
        return userRepo.findAll();
    }
}
