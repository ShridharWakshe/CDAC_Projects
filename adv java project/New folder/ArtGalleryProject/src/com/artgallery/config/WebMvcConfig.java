package com.artgallery.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.artgallery.dao.CartDao;
import com.artgallery.dao.CartDaoImpl;
import com.artgallery.dao.CartItemDao;
import com.artgallery.dao.CartItemDaoImpl;
import com.artgallery.dao.ProductDao;
import com.artgallery.dao.ProductDaoImpl;
import com.artgallery.dao.UserDao;
import com.artgallery.dao.UserDaoImpl;

@Configuration
@EnableWebMvc
@ComponentScan("com.artgallery")
public class WebMvcConfig {

	@Bean
	InternalResourceViewResolver viewResolver() {

		InternalResourceViewResolver viewresolver = new InternalResourceViewResolver();

		viewresolver.setPrefix("/WEB-INF/views/");
		viewresolver.setSuffix(".jsp");
		return viewresolver;

	}

	@Bean
	DriverManagerDataSource getDataSource() {
		DriverManagerDataSource datasource = new DriverManagerDataSource();
		datasource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		datasource.setUrl("jdbc:mysql://localhost:3306/ecommerce");
		datasource.setUsername("root");
		datasource.setPassword("cdac");

		return datasource;

	}

	@Bean
	public UserDao getUserDao() {
		return new UserDaoImpl(getDataSource());
	}
	
	@Bean
	public ProductDao getProductDao() {
		return new ProductDaoImpl(getDataSource());
	}
	
	@Bean
	public CartDao getCartDao() {
		return new CartDaoImpl(getDataSource());
	}
	
	@Bean
	public CartItemDao getCartItemDao() {
		return new CartItemDaoImpl(getDataSource());
	}

}
