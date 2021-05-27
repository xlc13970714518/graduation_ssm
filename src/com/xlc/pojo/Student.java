package com.xlc.pojo;



public class Student {
private int id;
private int number;
private String name;
private String password;
private String  sex;//
private String major;
private String dept;//系别
private String enyear;//入学年份
private int options;//0 未选课  1选课了
private int papertitleid;//论文题目id初始化为0
private String phonenumber;
private String qq;

public int getPapertitleid() {
	return papertitleid;
}
public void setPapertitleid(int papertitleid) {
	this.papertitleid = papertitleid;
}

public int getOptions() {
	return options;
}
public void setOptions(int options) {
	this.options = options;
}
public String getDept() {
	return dept;
}
public void setDept(String dept) {
	this.dept = dept;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getNumber() {
	return number;
}
public void setNumber(int number) {
	this.number = number;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getMajor() {
	return major;
}
public void setMajor(String major) {
	this.major = major;
}
public String getEnyear() {
	return enyear;
}
public void setEnyear(String enyear) {
	this.enyear = enyear;
}
public String getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(String phonenumber) {
	this.phonenumber = phonenumber;
}
public String getQq() {
	return qq;
}
public void setQq(String qq) {
	this.qq = qq;
}
@Override
public String toString() {
	return "Student [id=" + id + ", number=" + number + ", name=" + name + ", password=" + password + ", sex=" + sex
			+ ", major=" + major + ", dept=" + dept + ", enyear=" + enyear + ", options=" + options + ", papertitleid="
			+ papertitleid + ", phonenumber=" + phonenumber + ", qq=" + qq + "]";
}





}
