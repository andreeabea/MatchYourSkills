package com.website.entities;

import org.springframework.data.mongodb.core.mapping.Document;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.util.Date;
import java.util.List;
import java.util.Set;

enum ExperienceLevel {Entry_Level, Internship, Associate, Mid_Senior, Director, Executive}

@Document (collection = "job")
public class Job {

    @Id
    private String id;

    private String name;

    private Set<Skill> skills;

    private ExperienceLevel experienceLevel;

    private String location;

    private Company employer;

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

    public Company getEmployer() {
        return employer;
    }

    public void setEmployer(Company employer) {
        this.employer = employer;
    }

    public Job(String id, String name, Set<Skill> skills, ExperienceLevel experienceLevel, String location, Company employer, Date datePosted, String industry, String description) {
        this.id = id;
        this.name = name;
        this.skills = skills;
        this.experienceLevel = experienceLevel;
        this.location = location;
        this.employer = employer;
        this.datePosted = datePosted;
        this.industry = industry;
        this.description = description;
    }

    public Job(){}
}
