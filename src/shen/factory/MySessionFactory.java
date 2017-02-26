package shen.factory;

import java.io.InputStream;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import shen.test.Test;
/*
 * 采用单例模式
 * */
public class MySessionFactory {
	private static String resource = "mybatis.xml";
	private static InputStream is = Test.class.getClassLoader().getResourceAsStream(resource);
    private static SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(is);
    private static final MySessionFactory sessionfactory=new MySessionFactory();
    //private MySessionFactory(){}
    public static SqlSessionFactory getSessionFactory(){return sessionFactory;} 
}
