package top.eussi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.eussi.dao.UserDao;
import top.eussi.domain.User;
import top.eussi.service.UserService;

import java.io.Serializable;

/**
 * Created by wangxueming on 2018/10/13.
 */
@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userdao;

    public void setUserdao(UserDao userdao) {
        this.userdao = userdao;
    }

    @Override
    public User get(Serializable id) {
        return null;
    }
}
