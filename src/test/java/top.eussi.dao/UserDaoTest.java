package top.eussi.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.Test;
import top.eussi.domain.User;

/**
 * Created by wangxueming on 2018/10/13.
 */
@ContextConfiguration("classpath*:/spring_conf/spring-dao.xml")
public class UserDaoTest extends AbstractTransactionalTestNGSpringContextTests{

    @Autowired
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Test
    public void getUser() {
        String id = "1";
        User user = userDao.get(id);
        System.out.println(user.toString());
    }
}
