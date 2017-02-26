package shen.action;

import java.util.ArrayList;

import javax.mail.Session;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.log4j.Logger;











import shen.bean.Article;
import shen.factory.MySessionFactory;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class BlogAction extends ActionSupport{
	private Logger log=Logger.getLogger(BlogAction.class);
	private java.util.List<Article> articleList;
	
	public java.util.List<Article> getArticleList() {
		return articleList;
	}

	public void setArticleList(java.util.List<Article> articleList) {
		this.articleList = articleList;
	}
	/*����ǰ��ҳ*/
	public String index(){
		//�������µ�4ƪ����
		SqlSession sqlSession=null;
		SqlSessionFactory sf=null;
		//System.out.println("run");
		try{
			articleList=new ArrayList<Article>();
			sf= MySessionFactory.getSessionFactory();
			sqlSession= sf.openSession();
			String statement="shen.mapper.articleMapper.getTop4";
			articleList=sqlSession.selectList(statement);
			System.out.println(articleList.size()+"  "+articleList.get(0).getComment_count());
		}catch(Exception e){
			e.printStackTrace();
			log.error("ҳ���������4Ƭ����ʧ��",e);
		}finally{
			if(sqlSession!=null){
				sqlSession.close();
			}
		}
		return "index";
	}
}
