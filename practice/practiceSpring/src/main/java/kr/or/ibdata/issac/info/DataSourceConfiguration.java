package kr.or.ibdata.issac.info;

import javax.sql.DataSource;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class DataSourceConfiguration implements WebMvcConfigurer {

    @Bean(name="customDataSource")
    @ConfigurationProperties("spring.datasource")
    public DataSource customDataSource() {
        return DataSourceBuilder.create().build();
    }
    
    @Override
    public void addCorsMappings(CorsRegistry registry) {
    	// TODO Auto-generated method stub
    	registry.addMapping("/**")
        .allowedOrigins("http://localhost:4200");
    }
}