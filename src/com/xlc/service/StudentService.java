package com.xlc.service;

import java.util.List;

import com.xlc.pojo.PaperTitle;
import com.xlc.pojo.Student;
import com.xlc.pojo.StudentPaper;
import com.xlc.pojo.StudentPaperTitles;

public interface StudentService {
public Student selStudent(String name,String password);
public List<Student> selAll(int page1,int size);//分页
public List<Student> selAll1();//查询所有
public int deleteStudent(int number);//管理员通过学号删除学生
public int addStudent(Student student);//管理员添加学生
public int updateStudent(Student student);//学生修改信息
public Student selStudent(int number);
public int updateStudentPswd(int number,String oldPassword,String newPassword);//学生修改密码
public int selByDept(String dept);//查看本系论文题目
public List<PaperTitle> selByDeptPageQuery(String dept,int pageIndex,int pageSize);//本系论文题目分页查询
public int updateStudentPapertitle(int number,int option,int paperTitleId);//选课更新学生信息
public int updatePaperTitleChoose_status(int id,int chooseStatus);//更新论文题目表信息
public int selStudentById(int id);//
public PaperTitle selPaperTitleByid(int id);
public StudentPaper selStudentPapersByStuNum(int stuNum);
public int insertStudentPapers(StudentPaper studentPaper);
public int updateStudentPapers(int stuNum,String paperPath,int checkStatus,String paperAdvices);
public StudentPaperTitles selStudentPaperTitlesByStudentNum(int stuNum);
}
