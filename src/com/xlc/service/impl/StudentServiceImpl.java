package com.xlc.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xlc.mapper.StudentMapper;
import com.xlc.pojo.PaperTitle;
import com.xlc.pojo.Student;
import com.xlc.pojo.StudentPaper;
import com.xlc.pojo.StudentPaperTitles;
import com.xlc.service.StudentService;
@Service
public class StudentServiceImpl implements StudentService {
@Resource
 private StudentMapper studentMapper;
	@Override
	public Student selStudent(String name, String password) {
		// TODO Auto-generated method stub
		return studentMapper.selByNamePswd(name, password);
	}
	@Override
	public List<Student> selAll(int page1, int size) {
		// TODO Auto-generated method stub
		return studentMapper.selAll(page1, size);
	}
	@Override
	public List<Student> selAll1() {
		// TODO Auto-generated method stub
		return studentMapper.selAll1();
	}
	@Override
	public int deleteStudent(int number) {
		// TODO Auto-generated method stub
		return studentMapper.deleteByNumber(number);
	}
	@Override
	public int addStudent(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.addStudent(student);
	}
	@Override
	public int updateStudent(Student student) {
		// TODO Auto-generated method stub
		return studentMapper.updateStudent(student);
	}
	@Override
	public Student selStudent(int number) {
		// TODO Auto-generated method stub
		return studentMapper.selByNumber(number);
	}
	@Override
	public int updateStudentPswd(int number, String oldPassword, String newPassword) {
		// TODO Auto-generated method stub
		return studentMapper.updateBynumberPswd(number, oldPassword, newPassword);
	}
	@Override
	public int selByDept(String dept) {
		// TODO Auto-generated method stub
		return studentMapper.selByDept(dept);
	}
	@Override
	public List<PaperTitle> selByDeptPageQuery(String dept, int pageIndex, int pageSize) {
		// TODO Auto-generated method stub
		return studentMapper.selByDeptPageQuery(dept, pageIndex, pageSize);
	}
	@Override
	public int updateStudentPapertitle(int number, int option, int paperTitleId) {
		// TODO Auto-generated method stub
		return studentMapper.updateStudentByNumber(number, option, paperTitleId);
	}
	@Override
	public int updatePaperTitleChoose_status(int id, int chooseStatus) {
		// TODO Auto-generated method stub
		return studentMapper.updatePaperTitleByid(id, chooseStatus);
	}
	@Override
	public int selStudentById(int id) {
		// TODO Auto-generated method stub
		return studentMapper.selStudentById(id);
	}
	@Override
	public PaperTitle selPaperTitleByid(int id) {
		// TODO Auto-generated method stub
		return studentMapper.selPapertitleById(id);
	}
	@Override
	public StudentPaper selStudentPapersByStuNum(int stuNum) {
		// TODO Auto-generated method stub
		return studentMapper.selStudentPapersByStuNum(stuNum);
	}
	@Override
	public int insertStudentPapers(StudentPaper studentPaper) {
		// TODO Auto-generated method stub
		return studentMapper.insertStudentPapers(studentPaper);
	}
	
	@Override
	public StudentPaperTitles selStudentPaperTitlesByStudentNum(int stuNum) {
		// TODO Auto-generated method stub
		return studentMapper.selStudentPaperTitlesByStudentNum(stuNum);
	}
	@Override
	public int updateStudentPapers(int stuNum, String paperPath, int checkStatus, String paperAdvices) {
		// TODO Auto-generated method stub
		return studentMapper.updateStudentPapers(stuNum, paperPath, checkStatus, paperAdvices);
	}
	

}
