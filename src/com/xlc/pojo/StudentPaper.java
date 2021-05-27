package com.xlc.pojo;

public class StudentPaper {
 private int id;
 private int stuNum;
 private String paperPath;
 private String stuName;
 private String stuDept;
 private String stuMajor;
 private int checkStatus;
 private int teacherNum;
 private String paperAdvices;
 public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getStuNum() {
	return stuNum;
}
public void setStuNum(int stuNum) {
	this.stuNum = stuNum;
}
public String getPaperPath() {
	return paperPath;
}
public void setPaperPath(String paperPath) {
	this.paperPath = paperPath;
}
public String getStuName() {
	return stuName;
}
public void setStuName(String stuName) {
	this.stuName = stuName;
}
public String getStuDept() {
	return stuDept;
}
public void setStuDept(String stuDept) {
	this.stuDept = stuDept;
}
public String getStuMajor() {
	return stuMajor;
}
public void setStuMajor(String stuMajor) {
	this.stuMajor = stuMajor;
}

public int getCheckStatus() {
	return checkStatus;
}
public void setCheckStatus(int checkStatus) {
	this.checkStatus = checkStatus;
}
public int getTeacherNum() {
	return teacherNum;
}
public void setTeacherNum(int teacherNum) {
	this.teacherNum = teacherNum;
}

public String getPaperAdvices() {
	return paperAdvices;
}
public void setPaperAdvices(String paperAdvices) {
	this.paperAdvices = paperAdvices;
}
@Override
public String toString() {
	return "StudentPaper [id=" + id + ", stuNum=" + stuNum + ", paperPath=" + paperPath + ", stuName=" + stuName
			+ ", stuDept=" + stuDept + ", stuMajor=" + stuMajor + ", checkStatus=" + checkStatus + ", teacherNum="
			+ teacherNum + ", paperAdvices=" + paperAdvices + "]";
}





}
