package top.eussi.domain;

import java.sql.Timestamp;

/**
 * @author wangxueming 2018-10-13
 *
 */
public class Keyword extends BaseDomain {

    private String articleId;

	private String keywords;

    public String getArticleId() {
        return articleId;
    }

    public void setArticleId(String articleId) {
        this.articleId = articleId;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }
}
