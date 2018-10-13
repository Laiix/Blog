package top.eussi.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.Assert;
import org.testng.annotations.Test;
import top.eussi.domain.Article;
import top.eussi.domain.User;

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
    public void getArticle() {
        String id = "1";
        Article article = articleDao.getAll().get(0);
        System.out.println(article.toString());
        Assert.assertEquals(article.getTitle(), "test");
    }
}
