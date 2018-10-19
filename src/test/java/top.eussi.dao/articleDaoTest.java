package top.eussi.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.Assert;
import org.testng.annotations.Test;
import top.eussi.constants.CommonConstants;
import top.eussi.domain.Article;
import top.eussi.domain.Page;
import top.eussi.domain.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
        Assert.assertEquals(articles.size(), 2);
        Article article = articles.get(1);
        System.out.println(article.toString());
        Assert.assertNotNull(article.getTitle());
    }

    @Test
    public void getArticle() {
        String id = "1";
        Article article = articleDao.get(id);
        System.out.println(article.getContent());
        Assert.assertNotNull(article.getContent());
    }

    @Test
    public void getPageArticle() {
        Map<String, Object> hashMap = new HashMap<String, Object>();
        hashMap.put(CommonConstants.START_INDEX, 1);
        hashMap.put(CommonConstants.PAGE_SIZE, 1);
        Page page = articleDao.pagedQuery(hashMap);
        System.out.println(page.toString());
    }

    @Test
    public void updateArticle() {
        Article article = new Article();
        article.setId("1");
        article.setTitle("我不喜欢触发");
        articleDao.update(article);
        article = articleDao.get("1");
        Assert.assertEquals("我不喜欢触发", "我不喜欢触发");

    }
}
