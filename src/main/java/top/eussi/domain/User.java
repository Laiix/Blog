package top.eussi.domain;

import java.sql.Timestamp;
import java.util.Date;

/**
 * @author wangxueming 2018-10-13
 *
 */
public class User extends BaseDomain {
    /**
     *锁定用户对应的状态值 
     */
    public static final String USER_LOCK = "1";
    /**
     * 用户解锁对应的状态值
     */
    public static final String USER_UNLOCK = "0";
    /**
     * 管理员类型
     */
    public static final String FORUM_ADMIN = "2";
    /**
     * 普通用户类型
     */
    public static final String NORMAL_USER = "1";

    private String id;

	private String username;

    private String password;

    private String salt;
    
    private String userType = NORMAL_USER;

    private String locked = USER_UNLOCK;

    private Timestamp lastVisit;

	private String lastIp;

    private UserInfo userInfo;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSalt() {
        return salt;
    }
    public void setSalt(String salt) {
        this.salt = salt;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getLocked() {
        return locked;
    }

    public void setLocked(String locked) {
        this.locked = locked;
    }

    public Date getLastVisit() {
        return lastVisit;
    }

    public void setLastVisit(Timestamp lastVisit) {
        this.lastVisit = lastVisit;
    }

    public String getLastIp() {
        return lastIp;
    }

    public void setLastIp(String lastIp) {
        this.lastIp = lastIp;
    }

    public UserInfo getUserInfo() {
        return userInfo;
    }

    public void setUserInfo(UserInfo userInfo) {
        this.userInfo = userInfo;
    }
}
