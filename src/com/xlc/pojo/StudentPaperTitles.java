package com.xlc.pojo;

public class StudentPaperTitles {
 private int id;
 private String paperTitleName;
 private String studentName;
 private int studentNumber;
 private String paperTitleProperties;
 private String paperTitleRequired;
 private String major;
 private String dept;
 private int teacherNum;
 private String teacherName;
private int  checkStatus;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPaperTitleName() {
	return paperTitleName;
}
public void setPaperTitleName(String paperTitleName) {
	this.paperTitleName = paperTitleName;
}
public String getStudentName() {
	return studentName;
}
public void setStudentName(String studentName) {
	this.studentName = studentName;
}
public int getStudentNumber() {
	return studentNumber;
}
public void setStudentNumber(int studentNumber) {
	this.studentNumber = studentNumber;
}
public String getPaperTitleProperties() {
	return paperTitleProperties;
}
public void setPaperTitleProperties(String paperTitleProperties) {
	this.paperTitleProperties = paperTitleProperties;
}
public String getPaperTitleRequired() {
	return paperTitleRequired;
}
public void setPaperTitleRequired(String paperTitleRequired) {
	this.paperTitleRequired = paperTitleRequired;
}
public String getMajor() {
	return major;
}
public void setMajor(String major) {
	this.major = major;
}
public String getDept() {
	return dept;
}
public void setDept(String dept) {
	this.dept = dept;
}

public String getTeacherName() {
	return teacherName;
}
public void setTeacherName(String teacherName) {
	this.teacherName = teacherName;
}


public int getTeacherNum() {
	return teacherNum;
}
public void setTeacherNum(int teacherNum) {
	this.teacherNum = teacherNum;
}
public int getCheckStatus() {
	return checkStatus;
}
public void setCheckStatus(int checkStatus) {
	this.checkStatus = checkStatus;
}
@Override
public String toString() {
	return "StudentPaperTitles [id=" + id + ", paperTitleName=" + paperTitleName + ", studentName=" + studentName
			+ ", studentNumber=" + studentNumber + ", paperTitleProperties=" + paperTitleProperties
			+ ", paperTitleRequired=" + paperTitleRequired + ", major=" + major + ", dept=" + dept + ", teacherNum="
			+ teacherNum + ", teacherName=" + teacherName + ", checkStatus=" + checkStatus + "]";
}




 
}
