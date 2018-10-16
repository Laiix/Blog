package top.eussi.domain;

import java.sql.Timestamp;

/**
 * @author wangxueming 2018-10-13
 *
 */
public class UserLoginLog extends BaseDomain {

    private String id;

	private String userId;

    private Timestamp loginTime;

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

    public Timestamp getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Timestamp loginTime) {
        this.loginTime = loginTime;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }
}
