package com.xlc.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xlc.pojo.PaperTitle;
import com.xlc.pojo.Student;
import com.xlc.pojo.StudentPaper;
import com.xlc.pojo.StudentPaperTitles;
import com.xlc.pojo.Teacher;
import com.xlc.service.AdminService;
import com.xlc.service.StudentService;
import com.xlc.service.TeacherService;

@Controller
public class TeacherController {
	@Resource
	 private AdminService adminService;
	@Resource
	private StudentService studentService;
	@Resource
	private TeacherService teacherService;
	@RequestMapping("teacherInformation")
	@ResponseBody
	public Map<String,Object> showTeacher(HttpSession session){
		int  num=((Teacher)session.getAttribute("teacher")).getNum();
		Teacher teacher=teacherService.selTeacherBynum(num);
		Map<String, Object> map=new HashMap<String, Object>();
		if(teacher!=null) {
			map.put("teacher", teacher);
			return map;
		}else {
			return null;
		}
		}
	@RequestMapping("updateTeacher")
	@ResponseBody
	public void updateTeacher(Teacher teacher,HttpServletResponse response) throws IOException {
	int index=teacherService.updateTeacher(teacher);
	if(index!=0) {
		response.getWriter().print("true");
	}else {
		response.getWriter().print("false");	
	}
	}
	@RequestMapping("updateTeacherPassword")
	@ResponseBody
	public void updatePassword(HttpSession session,String oldPassword,String newPassword,HttpServletResponse response) throws IOException {
		int  num=((Teacher)session.getAttribute("teacher")).getNum();
	int index=teacherService.updateTeacherPassword(num, oldPassword, newPassword);
	if(index!=0) {
		Teacher teacher =teacherService.selTeacherBynum(num);
		session.setAttribute("teacher", teacher);
		response.getWriter().print("true");
	}else {
		response.getWriter().print("false");
	}
	}
	@RequestMapping("insertPaperTitle")
	@ResponseBody
	public void insertPaperTitle(PaperTitle paperTitle,HttpServletResponse response) throws IOException {
		int index=teacherService.insertPaperTitle(paperTitle);
		System.out.println(paperTitle);
		if(index!=0) {
			response.getWriter().print("true");
		}else {
			response.getWriter().print("false");
		}
	}
@RequestMapping("showStudentPaperTitles")
@ResponseBody
	public Map<String, Object> showStudentPaperTitles(HttpSession session,int page,int pageSize){
		int pageIndex=(page-1)*pageSize;
		int teacher_num=((Teacher)session.getAttribute("teacher")).getNum();
	     List<StudentPaperTitles> studentPaperTitles=new ArrayList<StudentPaperTitles>();
	     studentPaperTitles=teacherService.selPageQueryStudentPaperTitles(teacher_num, pageIndex, pageSize);
	     Map<String, Object> map=new HashMap<String, Object>();
	    if(studentPaperTitles!=null) {
	    	map.put("studentPaperTitles", studentPaperTitles);
	    	return map;
	    }else {
			return null;
		}
	    }
@RequestMapping("TotalstudentPaperTitles")
@ResponseBody
public void getTotalstudentPaperTitles(HttpSession session,HttpServletResponse response) throws IOException {
	int teacher_num=((Teacher)session.getAttribute("teacher")).getNum();
	  List<StudentPaperTitles> studentPaperTitles=new ArrayList<StudentPaperTitles>();
	  studentPaperTitles=teacherService.selStudentPaperTitlesByTeacherNum(teacher_num);
	  int total=studentPaperTitles.size();
	  //System.out.println(total);
	  response.getWriter().print(total+"");
} 
@RequestMapping("SureStudentPapertitles")
@ResponseBody
public void insertStudentPapertitles(StudentPaperTitles studentPaperTitles,HttpServletResponse response) throws IOException {
	System.out.println(studentPaperTitles);
	int index=teacherService.insertStudentPaperTitles(studentPaperTitles);
	String title_name=studentPaperTitles.getPaperTitleName();
	if(index!=0) {
		 int sure_status=1;
		 int index2=teacherService.updatePapertitle(title_name, sure_status);
		 if(index2!=0) {
		 response.getWriter().print("true");
		 }else {
			 response.getWriter().print("false");
		}
	}else {
		 response.getWriter().print("false");
	}
}
@RequestMapping("TotalstudentPaper")
@ResponseBody
public void getTotalstudentPaper(HttpSession session,HttpServletResponse response) throws IOException {
	int teacher_num=((Teacher)session.getAttribute("teacher")).getNum();
	  List<StudentPaper> studentPaper=new ArrayList<StudentPaper>();
	  studentPaper=teacherService.selStudentPaperByTeacherNum(teacher_num);
	  int total=studentPaper.size();
      response.getWriter().print(total+"");
} 
@RequestMapping("showStudentPaper")
@ResponseBody
public Map<String, Object> showStudentPapr(int page,int pageSize,HttpSession session){
	int teacherNum=((Teacher)session.getAttribute("teacher")).getNum();
	int pageIndex=(page-1)*pageSize;
	List<StudentPaper> studentPapers=teacherService.selStudentPaperPageQueryByTeacherNum(teacherNum, pageIndex, pageSize);
	Map<String, Object> map=new HashMap<>();
if(studentPapers!=null) {
	map.put("studentPapers", studentPapers);
	return map;
}else {
	return null;
}
	
}
@RequestMapping("loadStudentPaper")
@ResponseBody
public void downloadPaperFile(String paperPath,int stuNum,String stuName,HttpServletResponse response,HttpServletRequest req) throws IOException {
	
	String fileName=stuNum+"_"+stuName+"论文.docx";
	String userAgent = req.getHeader("User-Agent");//获取浏览器名（IE/Chome/firefox）
	if(userAgent.contains("MSIE")||userAgent.contains("Trident")) {//针对IE或IE为内核的浏览器
		fileName=java.net.URLEncoder.encode(fileName,"UTF-8");
		}else {
			fileName=new String(fileName.getBytes("UTF-8"),"ISO-8859-1");//谷歌控制版本
	}
	//设置响应流中文件进行下载
	response.setHeader("Content-Disposition", "attachment;filename="+fileName);
	//把二进制流放入到响应体中.
	String path0 = "F:/paper";
	File file = new File(path0, paperPath);
	FileUtils.copyFile(file, response.getOutputStream());
	
}
@RequestMapping("checkPaper")
@ResponseBody
public void checkPaper(int stuNum,int checkStatus,String paperAdvices,HttpServletResponse response) throws IOException {
	int index=teacherService.updateStudentPaperByStuNum(stuNum, checkStatus, paperAdvices);
	if(index!=0) {
		response.getWriter().print("true");
	}else {
		response.getWriter().print("false");
	}
}
}
