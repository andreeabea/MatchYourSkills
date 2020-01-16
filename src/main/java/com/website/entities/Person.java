package com.website.entities;

import com.website.services.PersonService;
import org.bson.types.Binary;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.*;
import java.util.stream.Collectors;

@Document(collection = "person")
public class Person extends User {

    private Set<Skill> skills;

    private Date birthday;

    private Gender gender;

    public Binary getCV() {
        return CV;
    }

    public void setCV(Binary CV) {
        this.CV = CV;
    }

    private Binary CV;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean interestedIn(Job job){
        if(jobs!=null)
        {
            for(Job j : jobs){
                if(j.getId().equals(job.getId()))
                    return true;
            }
        }
        return false;
    }

    private String address;

    private List<Job> jobs;

    private Job currentJob;

    public Job getCurrentJob() {
        return currentJob;
    }

    public void setCurrentJob(Job currentJob) {
        this.currentJob = currentJob;
    }

    public Set<Skill> getSkills() {
        return skills;
    }

    public void setSkills(Set<Skill> skills) {
        this.skills = skills;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public List<Job> getJobs() {
        return jobs;
    }

    public void setJobs(List<Job> jobs) {
        this.jobs = jobs;
    }

    public Person(String id, String name, String email, Binary image, String description, String phone,
                  String password, Set<Skill> skills, Date birthday, Gender gender, List<Job> jobs, Binary CV) {
        super(id, name, email, image, description, phone, password);
        this.skills = skills;
        this.birthday = birthday;
        this.gender = gender;
        this.jobs = jobs;
        this.CV = CV;
    }

    public Person()
    {
        super();
    }

    public void addJob(Job j)
    {
        this.jobs.add(j);
    }

//    @Override
//    public void update(Observable o, Object arg) {
//        PersonService ps = new PersonService();
//        //Job j = (Job) o;
//        //List<Job> jbs = jobs.stream().filter(x -> !x.getId().equals(j.getId())).collect(Collectors.toList());
//    }
}