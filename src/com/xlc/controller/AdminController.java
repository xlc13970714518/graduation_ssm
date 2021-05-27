package com.xlc.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xlc.pojo.Admin;
import com.xlc.pojo.Dept;
import com.xlc.pojo.Major;
import com.xlc.pojo.Student;
import com.xlc.pojo.Teacher;
import com.xlc.service.AdminService;
import com.xlc.service.StudentService;
import com.xlc.service.TeacherService;


@Controller
public class AdminController {
	@Resource
	 private AdminService adminService;
	@Resource
	private StudentService studentService;
	@Resource
	private TeacherService teacherService;
	@ResponseBody
	@RequestMapping("admin_mpassword")
    public Map<String, String> updatePswd(
			@RequestParam Map< String ,String> pswd,HttpSession httpSession) {
		Admin admin=(Admin)httpSession.getAttribute("admin");
		int index=	adminService.updateAdmin(admin.getName(),pswd.get("oldpassword"),pswd.get("newPassword"));
	Map<String, String> map=new HashMap<String, String>();
	if(index!=0) {
		map.put("flag", "1");
		return map;
		 }
		else {
			map.put("flag", "0");
			return map;
			
		}
	}
	//分页查询
	@RequestMapping("admin_mstudent")
	@ResponseBody
	public List<Student> selAll(int pageIndex,int pageSize ){
		 int page1=(pageIndex-1)*pageSize;
		  return studentService.selAll(page1,pageSize);
	}
	//服务器要返回一个字符串 用response
	@RequestMapping("total")
	@ResponseBody
	public void total(HttpServletResponse response) throws IOException {
		List<Student> list=studentService.selAll1();
		String total=list.size()+"";
		response.getWriter().print(total);
	}
	@RequestMapping("deleteStudent")
	@ResponseBody
	public void delete(int number,HttpServletResponse response) throws IOException {
		int index=studentService.deleteStudent(number);
		if(index!=0) {
			response.getWriter().print("true");
			//System.out.println("1");
		}
		else {
			response.getWriter().print("false");
			//System.out.println("0");
		}
	}
	@RequestMapping("addStudent")
	@ResponseBody
	public void addStudent(Student student,HttpServletResponse response) throws IOException {
		//System.out.println("stu:"+student);
		int index=studentService.addStudent(student);
		
		if(index!=0) {
			response.getWriter().print("true");
			//System.out.println("1");
		}
		else {
			response.getWriter().print("false");
			//System.out.println("0");
		}
		
	}
	@RequestMapping("admin_mteacher")
	@ResponseBody
	public List<Teacher> selAllTeacher(int pageIndex,int pageSize ){
		 int page=(pageIndex-1)*pageSize;
		  return teacherService.selPageQuery(page, pageSize);
	}
	//服务器要返回一个字符串 用response
	@RequestMapping("totalTeacher")
	@ResponseBody
	public void totalTeacher(HttpServletResponse response) throws IOException {
		List<Teacher> list=teacherService.selAll();
		String total=list.size()+"";
		response.getWriter().print(total);
	}
	@RequestMapping("deleteTeacher")
	@ResponseBody
	public void deleteTeacher(int num,HttpServletResponse response) throws IOException {
		int index=teacherService.deleteTeacher(num);
		if(index!=0) {
			response.getWriter().print("true");
			//System.out.println("1");
		}
		else {
			response.getWriter().print("false");
			//System.out.println("0");
		}
	}
@RequestMapping("addTeacher")
@ResponseBody
	public void addTeacher(Teacher teacher,HttpServletResponse response) throws IOException {
		//System.out.println("stu:"+student);
		int index=teacherService.insertTeacher(teacher);
		if(index!=0) {
			response.getWriter().print("true");
			//System.out.println("1");
		}
		else {
			response.getWriter().print("false");
			//System.out.println("0");
		}
		
	}
@RequestMapping("admin_DeptTotal")
@ResponseBody
	public void getDeptTotal(HttpServletResponse response) throws IOException {
		int total=0;
		List<Dept> depts=adminService.selAllDept();
		if(depts!=null) {
			total=depts.size();
			
		}
		response.getWriter().print(total+"");
	}
@RequestMapping("admin_showDept")
@ResponseBody
	public List<Dept> showDept(int page,int pageSize){
		int pageIndex=pageSize*(page-1);
		return adminService.selDeptPageQuery(pageIndex, pageSize);
		
	}
@RequestMapping("admin_deleteDept")
@ResponseBody
	public void deleteDept(int dept_id,HttpServletResponse response) throws IOException {
		int index=adminService.deleteDept(dept_id);
		//System.out.println(index);
		if(index!=0) {
			response.getWriter().print("true");
		}else {
			response.getWriter().print("false");
		}
	}
@RequestMapping("admin_addDept")
@ResponseBody
	public void addDept(Dept dept,HttpServletResponse response) throws IOException {
		
		int index=adminService.insertDept(dept);
		
		if(index!=0) {
			response.getWriter().print("true");
		}else {
			response.getWriter().print("false");
		}
	}
@RequestMapping("admin_MajorTotal")
@ResponseBody
	public void getMajorTotalByDept_id(int dept_id,HttpServletResponse response) throws IOException {
   int total=0;
   List<Major> majors=adminService.selMajorByDept_id(dept_id);
   if(majors!=null) {
	   total=majors.size();
	   
	   }
   response.getWriter().print(total+"");
}
@RequestMapping("admin_showMajors")
@ResponseBody
public List<Major> showMajors(int dept_id,int page,int pageSize){
	int pageIndex=pageSize*(page-1);
	return adminService.selMajorPageQueryByDept_id(dept_id, pageIndex, pageSize);

  }
@RequestMapping("admin_deleteMajor")
@ResponseBody
public void deleteMajor(int major_id,HttpServletResponse response) throws IOException {
	int index=adminService.deleteMajor(major_id);
	//System.out.println(index);
	if(index!=0) {
		response.getWriter().print("true");
	}else {
		response.getWriter().print("false");
	}
}
@RequestMapping("admin_addMajors")
@ResponseBody
public void addMajors(Major major,HttpServletResponse response) throws IOException {
	//System.out.println(major);
	int index=adminService.insertMajor(major);
    if(index!=0) {
		response.getWriter().print("true");
	}else {
		response.getWriter().print("false");
	}
}
@RequestMapping("showBaseDept")
@ResponseBody
public List<Dept> showBaseDepts(){
	return adminService.selAllDept();
}
@RequestMapping("showDeptMajors")
@ResponseBody
public List<Major>showDeptMajors(String dept_name){
	
	return adminService.selMajorsBydept_name(dept_name);
	
}
}
