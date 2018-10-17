package top.eussi.dao;

import org.springframework.stereotype.Repository;
import top.eussi.domain.Keyword;

import java.io.Serializable;
import java.util.List;

/**
 * Created by wangxueming on 2018/10/13.
 */
@Repository
public interface KeywordDao extends BaseDao<Keyword> {
    public List<Keyword> gets(Serializable id);
}
