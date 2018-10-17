package top.eussi.service;

import top.eussi.domain.Article;
import top.eussi.domain.Page;

import java.util.List;
import java.util.Map;

/**
 * Created by wangxueming on 2018/10/13.
 */
public interface ArticleService {
    public Page<Article> pageQuery(long currentNo, int pageSize, Map<String, Object> parameters);
}
