package com.xlc.mapper;

import java.util.List;


import com.xlc.pojo.PaperTitle;

import com.xlc.pojo.StudentPaper;
import com.xlc.pojo.StudentPaperTitles;
import com.xlc.pojo.Teacher;

public interface TeacherMapper {
public Teacher selByNamePswd(String name,String password);
public List<Teacher> selPageQuery(int page,int size);//分页
public List<Teacher> selAll();//查询全部
public int deleteByNum(int num);
public int insertTeacher(Teacher teacher);
public Teacher selTeacherByNum(int  num);//老师编号查询
public int updateTeacherByNum(int num,String oldPassword,String newPassword);//修改密码
public int updateTeacher(Teacher teacher);//修改个人信息
public int insertPaperTitle(PaperTitle paperTitle);//插入论文题目
public List<StudentPaperTitles> selPageQueryStudentPaperTitles(int teacher_num,int page,int size);//分页
public List<StudentPaperTitles> selStudentPaperTitlesByTeacherNum(int teacher_num);
public int insertStudentPaperTitles(StudentPaperTitles studentPaperTitles);//
public int updatePapertitle(String title_name,int sure_status);//修改题目的sure_status为1
public List<StudentPaper> selStudentPaperPageQueryByTeacherNum(int teacherNum,int page,int size);
public List<StudentPaper>selStudentPaperByTeacherNum(int teacherNum);
public int updateStudentPaperByStuNum(int stuNum,int checkStatus,String paperAdvices);
}

