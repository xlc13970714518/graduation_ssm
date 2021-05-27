package com.xlc.mapper;

import java.util.List;



import com.xlc.pojo.PaperTitle;
import com.xlc.pojo.Student;
import com.xlc.pojo.StudentPaper;
import com.xlc.pojo.StudentPaperTitles;

public interface StudentMapper {
public Student  selByNamePswd(String name,String password);
public List<Student> selAll(int page1,int size);//分页
public List<Student> selAll1();//查询全部
public int deleteByNumber(int number);//管理员删除学生信息
public int addStudent(Student student);//管理员添加学生信息
public int updateStudent(Student student);//学生修改信息
public Student selByNumber(int number);//按学号查询
public int updateBynumberPswd(int number,String oldPassword,String newPassword);//学生修改密码
public int selByDept(String dept);//查询本系论文题目总数
public List<PaperTitle> selByDeptPageQuery(String dept,int pageIndex,int pageSize);//本系论文题目分页查询
public int updateStudentByNumber(int number,int option,int paperTitleId);//修改学生的option 和papertitleid
public int updatePaperTitleByid(int id,int chooseStatus);//更新papertitle
public int selStudentById(int id);//获取option查看学生是否选择论文题目
public PaperTitle selPapertitleById(int id);//获取学生选择的题目信息
public StudentPaper selStudentPapersByStuNum(int stuNum);
public int insertStudentPapers(StudentPaper studentPaper);
public int updateStudentPapers(int stuNum,String paperPath,int checkStatus,String paperAdvices);
public StudentPaperTitles selStudentPaperTitlesByStudentNum(int stuNum);

}
