package com.example.case_study.service.user;

import com.example.case_study.model.user.User;
import com.example.case_study.repo.user.IUserRepo;
import com.example.case_study.repo.user.UserRepo;

import java.util.List;

public class UserService implements IUserService {
    private IUserRepo userRepo = new UserRepo();
    @Override
    public void create(User user) {
        userRepo.create(user);
    }

    @Override
    public boolean findUser(User user) {
        return userRepo.findUser(user);
    }

    @Override
    public List<User> findAllUser() {
        return userRepo.findAllUser();
    }
}
