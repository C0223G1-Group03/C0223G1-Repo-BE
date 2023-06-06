package com.example.case_study.repo.user;

import com.example.case_study.model.user.User;

import java.util.List;

public interface IUserRepo {
    void create(User user);
    boolean findUser(User user);
    List<User> findAllUser();
}
