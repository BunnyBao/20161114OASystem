package com.iss.controllor;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.iss.pojo.User;
import com.iss.service.IUserService;

/**
 * @author Administrator
 *�û���¼����
 */
@Controller
@Scope("prototype")
public class UseLoginControl {
	
	Logger logger=Logger.getLogger(this.getClass());
	@Autowired
	IUserService userService;
	/**
	 * @param user
	 * @return
	 */
	@RequestMapping("/login")
	//@ResponseBody
	public String UserLogin(User user,String loginMsg,HttpSession session){
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		user.setUlastlogintime(sdf.format(new Date()));
		if (userService.userLogin(user)) {
			logger.warn(user.getUname()+"��"+new Date().toLocaleString()+"��¼�ɹ�");
			//ӦΪÿ��¼һ���޸�һ�����ݿ�lastlogintime��Ϣ
			session.setAttribute("user", user);
			System.out.println("login success");
			return "admin";
		}else{
			loginMsg="��¼ʧ��";
			System.out.println("login error");
			return "../login";
		}
	}
	@RequestMapping("/register")
	//@ResponseBody
	public String register(User user){
		//SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		if(userService.register(user)){
			return "../login";
		}else{
			return "../register";
		}
		
	}
	@RequestMapping("/exit")
	public String exit(HttpSession session){
		Enumeration enumeration=session.getAttributeNames();
		while (enumeration.hasMoreElements()) {
			String atrribiuts = enumeration.nextElement().toString();
			session.removeAttribute(atrribiuts);
		}
		/*
		 * �������Mapֵ
		 * map.clear();*/
		return "../login";
		
	}
}
