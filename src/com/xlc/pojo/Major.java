package com.xlc.pojo;

public class Major  {
 private int major_id;
 private String major_name;
 private int  dept_id;
 private String dept_name;
public int getDept_id() {
	return dept_id;
}
public void setDept_id(int dept_id) {
	this.dept_id = dept_id;
}
public String getDept_name() {
	return dept_name;
}
public void setDept_name(String dept_name) {
	this.dept_name = dept_name;
}
public int getMajor_id() {
	return major_id;
}
public void setMajor_id(int major_id) {
	this.major_id = major_id;
}
public String getMajor_name() {
	return major_name;
}
public void setMajor_name(String major_name) {
	this.major_name = major_name;
}
@Override
public String toString() {
	return "Major [major_id=" + major_id + ", major_name=" + major_name + ", dept_id=" + dept_id + ", dept_name="
			+ dept_name + "]";
}

 
}
