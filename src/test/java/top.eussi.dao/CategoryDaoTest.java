package top.eussi.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.Assert;
import org.testng.annotations.Test;
import top.eussi.domain.Category;
import top.eussi.domain.Keyword;

import java.util.List;

/**
 * Created by wangxueming on 2018/10/13.
 */
@ContextConfiguration("classpath*:/spring_conf/blog-dao.xml")
public class CategoryDaoTest extends AbstractTransactionalTestNGSpringContextTests{

    @Autowired
    private CategoryDao categoryDaoDao;

    public void setKeywordDao(CategoryDao keywordDao) {
        this.categoryDaoDao = categoryDaoDao;
    }

    @Test
    public void getKeyword() {
        String id = "1";
        Category category = categoryDaoDao.get(id);
        System.out.println(category.toString());
        Assert.assertNotNull(category.getId());
    }
}
