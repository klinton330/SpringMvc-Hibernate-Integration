package com.pointel.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.pointel.")
public class WebMvcConfig implements WebMvcConfigurer {
	@Bean
	public InternalResourceViewResolver getView() {
		InternalResourceViewResolver internal = new InternalResourceViewResolver();
		internal.setViewClass(JstlView.class);
		internal.setPrefix("/WEB-INF/views/");
		internal.setSuffix(".jsp");
		return internal;
	}

	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

}
