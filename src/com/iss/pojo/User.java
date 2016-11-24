package com.iss.pojo;

public class User {
int id;
String uname;
String upwd;
String ulastlogintime;
String uemail;
String uregistertime;

public String getUregistertime() {
	return uregistertime;
}

public String getUlastlogintime() {
	return ulastlogintime;
}

public void setUlastlogintime(String ulastlogintime) {
	this.ulastlogintime = ulastlogintime;
}

public String getUemail() {
	return uemail;
}

public void setUemail(String uemail) {
	this.uemail = uemail;
}

public void setUregistertime(String uregistertime) {
	this.uregistertime = uregistertime;
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUname() {
	return uname;
}
public void setUname(String uname) {
	this.uname = uname;
}
public String getUpwd() {
	return upwd;
}
public void setUpwd(String upwd) {
	this.upwd = upwd;
}

}
