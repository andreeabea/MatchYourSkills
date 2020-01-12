package com.website.controller.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
public class LoginSecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;

    @Bean
    public AuthenticationProvider authProvider() {
        DaoAuthenticationProvider prov = new DaoAuthenticationProvider();
        prov.setUserDetailsService(userDetailsService);
        prov.setPasswordEncoder(new BCryptPasswordEncoder());
        return prov;
    }

    @Override
    public void configure(WebSecurity web) throws Exception {
        web.ignoring().antMatchers("/resources/**");
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests().antMatchers("/home", "#news", "#contact", "#about", "/addperson", "/addp", "/addcompany", "/addc", "/logo.png").permitAll()
                .antMatchers("/browseJobs", "/addPersonSkill","/saveJob","/skillAdded").hasAnyRole("PERSON", "ADMIN")
                .antMatchers("/postjob", "/addJobSkill", "/addj","/interestedPeople","/viewInterestedPeople","/deleteJob", "/skillsToJob","/editManager").hasAnyRole("COMPANY", "ADMIN")
                .antMatchers("/profilePage", "/profileCompany").hasAnyRole("PERSON","ADMIN","COMPANY")
                .antMatchers("/allusers","/addskill","/allskills","/adds","/deleteSkill").hasAnyRole("ADMIN").anyRequest().authenticated().and().formLogin()
                //.loginPage("/home")
                //.loginProcessingUrl("/perform_login")
                .defaultSuccessUrl("/home", true)
                .permitAll().and().logout().permitAll();

        http.csrf().disable();
    }

//    @Override
//    public void configure(AuthenticationManagerBuilder builder)
//            throws Exception {
//        builder.inMemoryAuthentication()
//                .withUser("admin")
//                .password("123")
//                .roles("ADMIN");
//    }

//    @Autowired
//    public void configureGlobal(AuthenticationManagerBuilder authenticationMgr)
//            throws Exception {
//        authenticationMgr.inMemoryAuthentication().withUser("admin").password("admin").authorities("ROLE_USER").and()
//                .withUser("javainuse").password("javainuse").authorities("ROLE_USER",
//                "ROLE_ADMIN");
//
//    }

}
