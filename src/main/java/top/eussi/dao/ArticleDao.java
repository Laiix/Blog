package top.eussi.dao;

import org.springframework.stereotype.Repository;
import top.eussi.domain.Article;

import java.io.Serializable;
import java.util.Map;

/**
 * Created by wangxueming on 2018/10/13.
 */
@Repository
public interface ArticleDao extends BaseDao<Article> {
}
