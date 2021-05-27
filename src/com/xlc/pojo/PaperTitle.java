package com.xlc.pojo;

public class PaperTitle {
	private int id;//题目编号
	private String title_name;//题目名字
	private String properties;//论文性质
	private String teacher_name;//老师名字
	private int teacher_num;//老师编号
	private String required;//论文要求
	private String title_major;//题目适合的 专业
	private String dept;//题目适合学生的系别
	private int  choose_status;//选择状态 初始化为0 未选择 1选择
	private int sure_status;//审核状态 初始化为0 未审核 1审核
	public int getChoose_status() {
		return choose_status;
	}
	public void setChoose_status(int choose_status) {
		this.choose_status = choose_status;
	}
	public int getSure_status() {
		return sure_status;
	}
	public void setSure_status(int sure_status) {
		this.sure_status = sure_status;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle_name() {
		return title_name;
	}
	public void setTitle_name(String title_name) {
		this.title_name = title_name;
	}
	public String getProperties() {
		return properties;
	}
	public void setProperties(String properties) {
		this.properties = properties;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getRequired() {
		return required;
	}
	public void setRequired(String required) {
		this.required = required;
	}
	public String getTitle_major() {
		return title_major;
	}
	public void setTitle_major(String title_major) {
		this.title_major = title_major;
	}
	
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	
	public int getTeacher_num() {
		return teacher_num;
	}
	public void setTeacher_num(int teacher_num) {
		this.teacher_num = teacher_num;
	}
	@Override
	public String toString() {
		return "PaperTitle [id=" + id + ", title_name=" + title_name + ", properties=" + properties + ", teacher_name="
				+ teacher_name + ", teacher_num=" + teacher_num + ", required=" + required + ", title_major="
				+ title_major + ", dept=" + dept + ", choose_status=" + choose_status + ", sure_status=" + sure_status
				+ "]";
	}
	
	
	

}
