package com.website.controller.security;

import com.website.entities.Person;
import com.website.entities.User;
import com.website.services.CompanyService;
import com.website.services.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private PersonService personService;

    @Autowired
    private CompanyService companyService;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = personService.findByEmail(email);

        org.springframework.security.core.userdetails.User.UserBuilder builder = null;
        if (user != null)
        {
            builder = org.springframework.security.core.userdetails.User.withUsername(email);
            builder.password(user.getPassword());
            if(email.equals("admin"))
            {
                builder.roles("ADMIN");
            }
            else
            {
                builder.roles("PERSON");
            }
        }
        else {
            user = companyService.findByEmail(email);
            if (user != null) {
                builder = org.springframework.security.core.userdetails.User.withUsername(email);
                builder.password(user.getPassword());
                builder.roles("COMPANY");
            }
            else
            {
                throw new UsernameNotFoundException("User not found.");
            }
        }

        return builder.build();
    }
}
