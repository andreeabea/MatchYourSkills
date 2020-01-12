package com.website.entities;

import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.Id;
import java.util.Date;
import java.util.Set;

@Document (collection = "job")
public class Job {

    @Id
    private String id;

    private String name;

    private Set<Skill> skills;

    private ExperienceLevel experienceLevel;

    private String location;

    private String employerId;

    private Date datePosted;

    private String industry;

    private String description;

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDatePosted() {
        return datePosted;
    }

    public void setDatePosted(Date datePosted) {
        this.datePosted = datePosted;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Skill> getSkills() {
        return skills;
    }

    public void setSkills(Set<Skill> skills) {
        this.skills = skills;
    }

    public ExperienceLevel getExperienceLevel() {
        return experienceLevel;
    }

    public void setExperienceLevel(ExperienceLevel experienceLevel) {
        this.experienceLevel = experienceLevel;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getEmployerId() {
        return employerId;
    }

    public void setEmployerId(String employerId) {
        this.employerId = employerId;
    }

    public Job(String id, String name, Set<Skill> skills, ExperienceLevel experienceLevel, String location, String employerId, Date datePosted, String industry, String description) {
        this.id = id;
        this.name = name;
        this.skills = skills;
        this.experienceLevel = experienceLevel;
        this.location = location;
        this.employerId = employerId;
        this.datePosted = datePosted;
        this.industry = industry;
        this.description = description;
    }

    public Job(){}
}
