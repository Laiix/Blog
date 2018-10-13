package top.eussi.domain;

import java.sql.Timestamp;

/**
 * @author wangxueming 2018-10-13
 *
 */
public class UserLoginLog extends BaseDomain {

    private String id;

	private String userId;

    private Timestamp loginDate;

    private String loginIp;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public Timestamp getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(Timestamp loginDate) {
        this.loginDate = loginDate;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }
}
