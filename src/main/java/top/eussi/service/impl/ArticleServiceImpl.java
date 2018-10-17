package top.eussi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.eussi.constants.CommonConstants;
import top.eussi.dao.ArticleDao;
import top.eussi.dao.CategoryDao;
import top.eussi.dao.KeywordDao;
import top.eussi.domain.Article;
import top.eussi.domain.Category;
import top.eussi.domain.Keyword;
import top.eussi.domain.Page;
import top.eussi.service.ArticleService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by wangxueming on 2018/10/13.
 */
@Service
public class ArticleServiceImpl implements ArticleService{
    @Autowired
    private ArticleDao articleDao;

    @Autowired
    private KeywordDao keywordDao;

    @Autowired
    private CategoryDao categoryDao;

    public void setArticleDao(ArticleDao articleDao) {
        this.articleDao = articleDao;
    }

    public void setKeywordDao(KeywordDao keywordDao) {
        this.keywordDao = keywordDao;
    }

    public void setCategoryDao(CategoryDao categoryDao) {
        this.categoryDao = categoryDao;
    }

    @Override
    public Page<Article> pageQuery(long currentNo, int pageSize, Map<String, Object> parameters) {
        if(currentNo < 1 || pageSize <1)
            return new Page<Article>();

        if(parameters == null)
            parameters = new HashMap<String, Object>();

        parameters.put(CommonConstants.START_INDEX, (currentNo-1) * pageSize);
        parameters.put(CommonConstants.PAGE_SIZE, pageSize);
        Page<Article> page = articleDao.pagedQuery(parameters);

        //填充article的关键字，类别等信息
        for(int i=0; i<page.getData().size(); i++) {
            Article article = page.getData().get(i);
            Category category = categoryDao.get(article.getCategoryId());
            List<Keyword> keywords = keywordDao.gets(article.getId());
            article.setCategory(category);
            article.setKeywords(keywords);
        }

        return page;
    }
}
