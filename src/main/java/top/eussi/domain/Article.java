package top.eussi.domain;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 * @author wangxueming 2018-10-13
 *
 */
public class Article extends BaseDomain {
    /**
     *置顶状态
     */
    public static final String ARTICLE_TOP = "1";
    /**
     * 非置顶状态
     */
    public static final String ARTICLE_UNTOP = "0";
    private String id;

	private String title;

    private String description;

    private String pic;

    private String content;

    private Long click;

    private Timestamp time;

    private String categoryId;

    private String userId;

    private String loginIp;

    private Long commentNum;

    private String isTop = ARTICLE_UNTOP;

    private List<Keyword> keywords = new ArrayList<Keyword>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Long getClick() {
        return click;
    }

    public void setClick(Long click) {
        this.click = click;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }

    public Long getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(Long commentNum) {
        this.commentNum = commentNum;
    }

    public String getIsTop() {
        return isTop;
    }

    public void setIsTop(String isTop) {
        this.isTop = isTop;
    }

    public List<Keyword> getKeywords() {
        return keywords;
    }

    public void setKeywords(List<Keyword> keywords) {
        this.keywords = keywords;
    }
}
