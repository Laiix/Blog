package top.eussi.domain;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 * @author wangxueming 2018-10-13
 *
 */
public class Msg extends BaseDomain {

    private String id;

	private String parentId;

    private String userId;

    private String content;

    private Timestamp date;

    //存放回复信息
    private List<Msg> msgs = new ArrayList<Msg>();

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }
}
