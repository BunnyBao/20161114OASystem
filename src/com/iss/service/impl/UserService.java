package com.iss.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.iss.imapper.IUserMapper;
import com.iss.pojo.User;
import com.iss.service.IUserService;

@Service
public class UserService implements IUserService{
	@Resource
	IUserMapper iUserMapper;
	@Override
	public boolean userLogin(User user) {
		List<User> list=iUserMapper.login(user);
		if (list.size()>0) {
			iUserMapper.updateLoginTime(user);
			return true;
		}else
			return false;
	}

	@Override
	public boolean register(User user) {
		int i=iUserMapper.register(user);
		if(i>0){
			return true;
		}else
			return false;
	}

}
