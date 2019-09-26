package com.wang.config;

import java.io.IOException;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import com.alibaba.druid.pool.DruidDataSource;

@Configuration
public class DbConfig {
	
	@Bean("mysqlSource")
	@Primary
	public DataSource mysqlDataSource() {
		DruidDataSource mysqlDataSource=new DruidDataSource();
		mysqlDataSource.setDriverClassName("com.mysql.jdbc.Driver");
		mysqlDataSource.setUrl("jdbc:mysql://localhost:3306/seckill");
		mysqlDataSource.setUsername("root");
		mysqlDataSource.setPassword("123456");
		mysqlDataSource.setMaxActive(8);
		return mysqlDataSource;
	}
	
	@Bean("oracleSource")
	public DataSource oracleSource() {
		DruidDataSource oracleDataSource=new DruidDataSource();
		oracleDataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		oracleDataSource.setUrl("jdbc:oracle:thin:@127.0.0.1:1521:orcl");
		oracleDataSource.setUsername("cs_info");
		oracleDataSource.setPassword("123456");
		oracleDataSource.setMaxActive(8);
		return oracleDataSource;
	}
	
	@Bean("mysql_sqlSessionFactory")
	@Primary
	public SqlSessionFactoryBean mysql_sqlSessionFactory(@Qualifier("mysqlSource")DataSource mysqlSource) throws IOException {
		SqlSessionFactoryBean mysql_sqlSession=new SqlSessionFactoryBean();
		mysql_sqlSession.setDataSource(mysqlSource);
		Resource configLocation = new ClassPathResource("mybatis-mysql-config.xml"); 
        mysql_sqlSession.setConfigLocation(configLocation);
		mysql_sqlSession.setTypeAliasesPackage("com.wang.bean");
		PathMatchingResourcePatternResolver resolver=new PathMatchingResourcePatternResolver();
		Resource[] mapperLocations=resolver.getResources("classpath:com/wang/mapper/mysql/*.xml");
		mysql_sqlSession.setMapperLocations(mapperLocations);
		return mysql_sqlSession;
		
	}
	@Bean("oracle_sqlSessionFactory")
	public SqlSessionFactoryBean oracle_sqlSessionFactory(@Qualifier("oracleSource")DataSource oracleSource) throws IOException {
		SqlSessionFactoryBean oracle_sqlSession=new SqlSessionFactoryBean();
		oracle_sqlSession.setDataSource(oracleSource);
		Resource configLocation = new ClassPathResource("mybatis-oracle-config.xml"); 
        oracle_sqlSession.setConfigLocation(configLocation);
		oracle_sqlSession.setTypeAliasesPackage("com.wang.bean");
		PathMatchingResourcePatternResolver resolver=new PathMatchingResourcePatternResolver();
		Resource[] mapperLocations=resolver.getResources("classpath:com/wang/mapper/oracle/*.xml");
		oracle_sqlSession.setMapperLocations(mapperLocations);
		return oracle_sqlSession;
		
	}
	
	@Bean("mysqlMapperScannerConfigurer")
	/**
	 * MapperScannerConfigurer 优先于@Value扫描，所以@Value不能用
	 * @return
	 */
	public MapperScannerConfigurer mysqlMapperScannerConfigurer() {
		MapperScannerConfigurer scannerConfigurer=new MapperScannerConfigurer();
		scannerConfigurer.setSqlSessionFactoryBeanName("mysql_sqlSessionFactory");//对应上面的bean
		scannerConfigurer.setBasePackage("com.wang.dao.mysql");
		return scannerConfigurer;
	}
	
	@Bean("oracleMapperScannerConfigurer")
	/**
	 * MapperScannerConfigurer 优先于@Value扫描，所以@Value不能用
	 * @return
	 */
	public MapperScannerConfigurer oracleMapperScannerConfigurer() {
		MapperScannerConfigurer scannerConfigurer=new MapperScannerConfigurer();
		scannerConfigurer.setSqlSessionFactoryBeanName("oracle_sqlSessionFactory");//对应上面的bean
		scannerConfigurer.setBasePackage("com.wang.dao.oracle");
		return scannerConfigurer;
	}
	
	@Bean("mysqlTransactionManager")
	public PlatformTransactionManager mysqlTransactionManager(@Qualifier("mysqlSource")DataSource mysqlSource) {
		DataSourceTransactionManager mysqlTransactionManager=new DataSourceTransactionManager() ;
		mysqlTransactionManager.setDataSource(mysqlSource);
		return mysqlTransactionManager;
	}
	
	@Bean("oracleTransactionManager")
	public PlatformTransactionManager oracleTransactionManager(@Qualifier("oracleSource")DataSource oracleSource) {
		DataSourceTransactionManager oracleTransactionManager=new DataSourceTransactionManager() ;
		oracleTransactionManager.setDataSource(oracleSource);
		return oracleTransactionManager;
	}
	
	
	
}
