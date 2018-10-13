package top.eussi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.eussi.dao.ArticleDao;
import top.eussi.domain.Article;
import top.eussi.service.ArticleService;

import java.util.List;

/**
 * Created by wangxueming on 2018/10/13.
 */
@Service
public class ArticleServiceImpl implements ArticleService{
    @Autowired
    private ArticleDao articleDao;

    public void setArticleDao(ArticleDao articleDao) {
        this.articleDao = articleDao;
    }

    @Override
    public List<Article> getAll() {
        return articleDao.getAll();
    }
}
