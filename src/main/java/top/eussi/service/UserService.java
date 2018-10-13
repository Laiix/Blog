package top.eussi.service;

import top.eussi.domain.User;

import java.io.Serializable;

/**
 * Created by wangxueming on 2018/10/13.
 */
public interface UserService {
    public User get(Serializable id);
}
