package com.xlc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xlc.mapper.TeacherMapper;
import com.xlc.pojo.PaperTitle;
import com.xlc.pojo.Student;
import com.xlc.pojo.StudentPaper;
import com.xlc.pojo.StudentPaperTitles;
import com.xlc.pojo.Teacher;
import com.xlc.service.TeacherService;
@Service
public class TeacherServiceImpl implements TeacherService{
@Resource
private TeacherMapper teacherMapper;
	@Override
	public Teacher selTeacher(String name, String password) {
		// TODO Auto-generated method stub
		return teacherMapper.selByNamePswd(name, password);
	}
	@Override
	public List<Teacher> selPageQuery(int page, int size) {
		// TODO Auto-generated method stub
		return teacherMapper.selPageQuery(page, size);
	}
	@Override
	public List<Teacher> selAll() {
		// TODO Auto-generated method stub
		return teacherMapper.selAll();
	}
	@Override
	public int deleteTeacher(int num) {
		// TODO Auto-generated method stub
		return teacherMapper.deleteByNum(num);
	}
	@Override
	public int insertTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.insertTeacher(teacher);
	}
	@Override
	public Teacher selTeacherBynum(int num) {
		// TODO Auto-generated method stub
		return teacherMapper.selTeacherByNum(num);
	}
	@Override
	public int updateTeacherPassword(int num, String oldPassword, String newPassword) {
		// TODO Auto-generated method stub
		return teacherMapper.updateTeacherByNum(num, oldPassword, newPassword);
	}
	@Override
	public int updateTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherMapper.updateTeacher(teacher);
	}
	@Override
	public int insertPaperTitle(PaperTitle paperTitle) {
		// TODO Auto-generated method stub
		return teacherMapper.insertPaperTitle(paperTitle);
	}
	@Override
	public List<StudentPaperTitles> selPageQueryStudentPaperTitles(int teacher_num, int page, int size) {
		// TODO Auto-generated method stub
		return teacherMapper.selPageQueryStudentPaperTitles(teacher_num, page, size);
	}
	@Override
	public List<StudentPaperTitles> selStudentPaperTitlesByTeacherNum(int teacher_num) {
		// TODO Auto-generated method stub
		return teacherMapper.selStudentPaperTitlesByTeacherNum(teacher_num);
	}
	@Override
	public int insertStudentPaperTitles(StudentPaperTitles studentPaperTitles) {
		// TODO Auto-generated method stub
		return teacherMapper.insertStudentPaperTitles(studentPaperTitles);
	}
	@Override
	public int updatePapertitle(String title_name, int sure_status) {
		// TODO Auto-generated method stub
		return teacherMapper.updatePapertitle(title_name, sure_status);
	}
	@Override
	public List<StudentPaper> selStudentPaperPageQueryByTeacherNum(int teacherNum, int page, int size) {
		// TODO Auto-generated method stub
		return teacherMapper.selStudentPaperPageQueryByTeacherNum(teacherNum, page, size);
	}
	@Override
	public List<StudentPaper> selStudentPaperByTeacherNum(int teacherNum) {
		// TODO Auto-generated method stub
		return teacherMapper.selStudentPaperByTeacherNum(teacherNum);
	}
	@Override
	public int updateStudentPaperByStuNum(int stuNum, int checkStatus, String paperAdvices) {
		// TODO Auto-generated method stub
		return teacherMapper.updateStudentPaperByStuNum(stuNum, checkStatus, paperAdvices);
	}
	
	
}
