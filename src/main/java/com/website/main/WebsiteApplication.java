package com.website.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

@SpringBootApplication
@EntityScan("com/website/entities")
@EnableMongoRepositories("com.website.dataAccess")
@ComponentScan(basePackages = {"com"})
public class WebsiteApplication {

	public static void main(String[] args) {
		SpringApplication.run(WebsiteApplication.class, args);
	}

}
