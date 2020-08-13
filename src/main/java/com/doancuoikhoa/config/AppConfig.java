package com.doancuoikhoa.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.doancuoikhoa.converter.Person_roleToRoleConverter;


@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.doancuoikhoa")
public class AppConfig extends WebMvcConfigurerAdapter {
  
	@Autowired
	private Person_roleToRoleConverter person_roleConverter;
	
	@Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(person_roleConverter);
    }
}
