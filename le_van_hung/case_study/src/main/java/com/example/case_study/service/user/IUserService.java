package com.example.case_study.service.user;

import com.example.case_study.model.user.User;

import java.util.List;

public interface IUserService {
    void create(User user);
    boolean findUser(User user);
    List<User> findAllUser();
}
