package com.iss.imapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.iss.pojo.User;
public interface IUserMapper {
	
	@Select("select * from t_user where uname=#{uname} and upwd=#{upwd}")
	List<User> login(User user);
	@Insert("insert into t_user(uname,upwd,uemail,ulastlogintime,uregistertime) values(#{uname},#{upwd},#{uemail},now(),now())")
	int register (User user);
	@Update("update t_user set ulastlogintime=#{ulastlogintime} where uname=#{uname}")
	void updateLoginTime(User user);
}
