package com.movieTickets.springboot;



import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

import springfox.documentation.swagger2.annotations.EnableSwagger2;





@SpringBootApplication
@EnableSwagger2
@EnableAspectJAutoProxy(proxyTargetClass=true)  
public class SpringBootReactNativeApplication /* implements WebMvcConfigurer */{

	
	
	
    public static void main(String[] args) {
        SpringApplication.run(SpringBootReactNativeApplication.class, args);
    }
    

	
}
