package com.iss.service;

import com.iss.pojo.User;

public interface IUserService {
boolean userLogin(User user);
boolean register(User user);
}
