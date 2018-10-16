package top.eussi.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.Assert;
import org.testng.annotations.Test;
import top.eussi.domain.Article;
import top.eussi.domain.User;

import java.util.List;

/**
 * Created by wangxueming on 2018/10/13.
 */
@ContextConfiguration("classpath*:/spring_conf/blog-dao.xml")
public class articleDaoTest extends AbstractTransactionalTestNGSpringContextTests{

    @Autowired
    private ArticleDao articleDao;

    public void setArticleDao(ArticleDao articleDao) {
        this.articleDao = articleDao;
    }

    @Test
    public void getAllArticle() {
        List<Article> articles = articleDao.getAll();
        System.out.println(articles.size());
        Assert.assertEquals(articles.size(), 1);
        Article article = articles.get(0);
        System.out.println(article.toString());
        Assert.assertNotNull(article.getTitle());
    }

    @Test
    public void getArticle() {
        String id = "1";
        Article article = articleDao.getArticle(id);
        System.out.println(article.getContent());
        Assert.assertNotNull(article.getContent());
    }
}
