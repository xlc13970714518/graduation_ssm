package com.xlc.service;

import java.util.List;

import com.xlc.pojo.PaperTitle;
import com.xlc.pojo.Student;
import com.xlc.pojo.StudentPaper;
import com.xlc.pojo.StudentPaperTitles;
import com.xlc.pojo.Teacher;

public interface TeacherService {
public Teacher selTeacher(String name,String password);
public List<Teacher> selPageQuery(int page,int size);//分页
public List<Teacher> selAll();//查询全部
public int deleteTeacher(int num);
public int insertTeacher(Teacher teacher);
public Teacher selTeacherBynum(int num);
public int updateTeacherPassword(int num,String oldPassword,String newPassword);
public int updateTeacher(Teacher teacher);
public int insertPaperTitle(PaperTitle paperTitle);
public List<StudentPaperTitles> selPageQueryStudentPaperTitles(int teacher_num,int page,int size);
public List<StudentPaperTitles> selStudentPaperTitlesByTeacherNum(int teacher_num);
public int insertStudentPaperTitles(StudentPaperTitles studentPaperTitles);
public int updatePapertitle(String title_name,int sure_status);//
public List<StudentPaper> selStudentPaperPageQueryByTeacherNum(int teacherNum,int page,int size);
public List<StudentPaper> selStudentPaperByTeacherNum(int teacherNum);
public int updateStudentPaperByStuNum(int stuNum,int checkStatus,String paperAdvices);
}
