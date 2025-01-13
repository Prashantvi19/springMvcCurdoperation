package webmvc.beans;

import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import webmvc.hibernateonject.Factoryobject;

@EnableWebMvc
//@EnableAnnotationConfig
@Configuration
@ComponentScan(basePackages = "webmvc")
public class BeansConfig {

	@Bean
	public SessionFactory sessionFactoryReturn() {

		return Factoryobject.sessionFactoryReturn();
	}
//
//	@Bean
//	public UserServicesImpl userServicesImplReturn() {
//
//		return new UserServicesImpl();
//	}

//	@Bean
//	@Scope("singleton")
//	public UserEntity userEntitylReturn() {
//
//		return new UserEntity();
//	}
}