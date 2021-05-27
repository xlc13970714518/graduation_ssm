package com.xlc.pojo;



public class Teacher {
private int id;
private int num;
private String name;
private String password;
private String position;
private String phonenumber;
private String qq;

public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
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
public String getPosition() {
	return position;
}
public void setPosition(String position) {
	this.position = position;
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
	return "Teacher [id=" + id + ", num=" + num + ", name=" + name + ", password=" + password + ", position=" + position
			+ ", phonenumber=" + phonenumber + ", qq=" + qq + "]";
}




}
