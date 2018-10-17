package top.eussi.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.Assert;
import org.testng.annotations.Test;
import top.eussi.domain.Keyword;
import top.eussi.domain.User;

import java.util.List;

/**
 * Created by wangxueming on 2018/10/13.
 */
@ContextConfiguration("classpath*:/spring_conf/blog-dao.xml")
public class KeywordDaoTest extends AbstractTransactionalTestNGSpringContextTests{

    @Autowired
    private KeywordDao keywordDao;

    public void setKeywordDao(KeywordDao keywordDao) {
        this.keywordDao = keywordDao;
    }

    @Test
    public void getKeyword() {
        String id = "1";
        List<Keyword> keywords = keywordDao.gets(id);
        System.out.println(keywords.toString());
        Assert.assertNotNull(keywords.get(0).getArticleId());
    }
}
