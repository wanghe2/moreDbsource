package com.wang.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import com.alibaba.druid.pool.DruidDataSource;
import com.wang.util.DbPropertiesByAuto;

//@Configuration
//@MapperScan(basePackages="com.wang.dao.mysql",sqlSessionFactoryRef="mysql_sqlSessionFactory")
public class MysqlDbConfig {
	
	@Autowired
	DbPropertiesByAuto dbPropertiesByAuto;
	
	@Bean("mysqlDataSource")
	public DataSource mysqlDataSource() {
		DruidDataSource mysqlDataSource=new DruidDataSource();
		mysqlDataSource.setDriverClassName(dbPropertiesByAuto.mysqldirver);
		mysqlDataSource.setUrl(dbPropertiesByAuto.mysqlurl);
		mysqlDataSource.setUsername(dbPropertiesByAuto.mysqlusername);
		mysqlDataSource.setPassword(dbPropertiesByAuto.mysqlpwd);
		mysqlDataSource.setMaxActive(dbPropertiesByAuto.maxActive);
		return mysqlDataSource;
	}
	
	
	
	@Bean("mysql_sqlSessionFactory")
	public SqlSessionFactory mysql_sqlSessionFactory(@Qualifier("mysqlDataSource")DataSource mysqlDataSource) throws Exception {
		SqlSessionFactoryBean mysql_sqlSession=new SqlSessionFactoryBean();
		mysql_sqlSession.setDataSource(mysqlDataSource);
		Resource configLocation = new ClassPathResource("mybatis-mysql-config.xml"); 
        mysql_sqlSession.setConfigLocation(configLocation);
		mysql_sqlSession.setTypeAliasesPackage("com.wang.bean");
		PathMatchingResourcePatternResolver resolver=new PathMatchingResourcePatternResolver();
		Resource[] mapperLocations=resolver.getResources("classpath:com/wang/mapper/mysql/*.xml");
		mysql_sqlSession.setMapperLocations(mapperLocations);
		return mysql_sqlSession.getObject();
		
	}
	
	@Bean("mysqlTransactionManager")
	public PlatformTransactionManager mysqlTransactionManager(@Qualifier("mysqlDataSource")DataSource mysqlDataSource) {
		DataSourceTransactionManager mysqlTransactionManager=new DataSourceTransactionManager() ;
		mysqlTransactionManager.setDataSource(mysqlDataSource);
		return mysqlTransactionManager;
	}
	
}
