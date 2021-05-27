package com.xlc.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import com.xlc.pojo.PaperTitle;
import com.xlc.pojo.Student;
import com.xlc.pojo.StudentPaper;
import com.xlc.pojo.StudentPaperTitles;
import com.xlc.pojo.Teacher;
import com.xlc.service.AdminService;
import com.xlc.service.StudentService;
import com.xlc.service.TeacherService;

@Controller
public class StudentController {
	@Resource
	 private AdminService adminService;
	@Resource
	private StudentService studentService;
	@Resource
	private TeacherService teacherService;
	@ResponseBody
	@RequestMapping("information")
	public Map<String,Student> showStudent(HttpSession session) {
		Map<String, Student> map=new HashMap<String, Student>();
		Student student=(Student)session.getAttribute("student");
		//System.out.println(student);
		int number =student.getNumber();
		Student student2=studentService.selStudent(number);
		if (student2!=null) {
			map.put("student", student2);
			//System.out.println(map.get("student"));
		return map;
		}else {
			return null;
		}
	}
	@RequestMapping("updateStudent")
	@ResponseBody
	public void updateStudent(Student student,HttpServletResponse response,HttpSession session) throws IOException {
		//System.out.println(student);
		Student student2=(Student)session.getAttribute("student");
		student.setNumber(student2.getNumber());
		int index=studentService.updateStudent(student);
		//System.out.println(index);
		if(index!=0) {
				response.getWriter().print("true");
				
			}
			else {
				response.getWriter().print("false");
				
	 		}
	}
	@RequestMapping("student_mpassword")
	@ResponseBody
	public void updateStuPswd(String oldPassword,String newPassword,HttpSession session,HttpServletResponse response) throws IOException {
		int number=((Student)session.getAttribute("student")).getNumber();
		int index=studentService.updateStudentPswd(number, oldPassword, newPassword);
		if(index!=0) {
			Student student=studentService.selStudent(number);
			session.setAttribute("student", student);
			response.getWriter().print("true");
		}else {
			response.getWriter().print("false");
		}
	}
	@RequestMapping("totalPaperTitle")
	@ResponseBody
	public void showTitleTotal(HttpSession session,HttpServletResponse response) throws IOException {
		String dept =((Student)session.getAttribute("student")).getDept();
		String totalPaperTitle=studentService.selByDept(dept)+"";
		response.getWriter().print(totalPaperTitle);
}
@RequestMapping("paperTitleInformation")
@ResponseBody
public List<PaperTitle> showPaperTitle(HttpSession session,int page,int pageSize) {
		int pageIndex=(page-1)*pageSize;
		String dept =((Student)session.getAttribute("student")).getDept();
		return studentService.selByDeptPageQuery(dept, pageIndex, pageSize);
	}
@RequestMapping("options")
@ResponseBody
public void getStudentOptions(HttpSession session,HttpServletResponse response) throws IOException {
	int id=((Student)session.getAttribute("student")).getId();
	int option =studentService.selStudentById(id);
	response.getWriter().print(option);
	
}
@RequestMapping("choosePaperTitle")
@ResponseBody
public void choosePaperTitle(HttpSession session,int id,HttpServletResponse response) throws IOException {
	  Student student =(Student)session.getAttribute("student");
	  int number=student.getNumber();
	  System.out.println(number);
	  int option =1;
	int index1=studentService.updateStudentPapertitle(number,option, id);
	int chooseStatus=1;
	int index2=studentService.updatePaperTitleChoose_status(id,chooseStatus);
	System.out.println(index1);
	System.out.println(index2);
	if(index1!=0&&index2!=0) {
		response.getWriter().print("true");
	}else {
		response.getWriter().print("false");
	}
}
@RequestMapping("showPaperTitleInformation")
@ResponseBody
public Map<String,Object> showPaperTitle(HttpSession session) {
	Map<String, Object> map=new HashMap<String, Object>();
	Student student=(Student)session.getAttribute("student");
	int id=student.getId();
    PaperTitle paperTitle=studentService.selPaperTitleByid(id);
   int teacherNum;
   System.out.println("stuid"+id);
   if(paperTitle==null) {
	map.put("flag","false"); 
   }else {
    teacherNum=paperTitle.getTeacher_num();
    //System.out.println(teacherNum);
    Teacher teacher=teacherService.selTeacherBynum(teacherNum);
    //System.out.println(teacher);
	map.put("flag", "true");
	map.put("paperTitle", paperTitle);
	map.put("teacher", teacher);
   }
   return map;
}
@RequestMapping("getCheckStatus")
@ResponseBody
public Map<String,String> getCheckStatus(HttpServletResponse response,HttpSession session) throws IOException {
	Student student=(Student)session.getAttribute("student");
	 int stuNum=student.getNumber();
	 Map<String, String> map=new HashMap<>();
	 map.put("paperTitleCheckSure","false");
	 StudentPaperTitles studentPaperTitles=studentService.selStudentPaperTitlesByStudentNum(stuNum);
		if(studentPaperTitles!=null) {
			map.put("paperTitleCheckSure","true");}
	 StudentPaper studentPaper=studentService.selStudentPapersByStuNum(stuNum);
	 if(studentPaper!=null) {
		int status=studentPaper.getCheckStatus();
		if(status==1) {
			map.put("paperCheckSure", "true");
		}
		 
	 }
	 return map;
	 
}
@RequestMapping("uploadToFile")
@ResponseBody
public Map<String,String> uploadFile(@RequestParam("file") MultipartFile file,HttpSession session,HttpServletRequest req) throws IOException {
	 Student student=(Student)session.getAttribute("student");
	 int stuNum=student.getNumber();
	 String fileName = file.getOriginalFilename();
	 StudentPaperTitles studentPaperTitles=studentService.selStudentPaperTitlesByStudentNum(stuNum);
    String stuName=student.getName();
    String stuDept=student.getDept();
    String stuMajor=student.getMajor();
    int teacherNum=studentPaperTitles.getTeacherNum();
    String paperPath;
    String uuid = UUID.randomUUID().toString();
    Map<String, String> map=new HashMap<>();
   // System.out.println(req.getSession().getServletContext().getRealPath("/upload"));
    //System.out.println(req.getServletContext().getRealPath("/files"));
    paperPath=uuid+stuNum+fileName;
 String  path="F:/paper/"+paperPath;
 StudentPaper studentPaper=new StudentPaper();
    studentPaper.setStuNum(stuNum);
   studentPaper.setStuName(stuName);
   studentPaper.setStuDept(stuDept);
   studentPaper.setStuMajor(stuMajor);
   studentPaper.setPaperPath(paperPath);
   studentPaper.setTeacherNum(teacherNum);
   StudentPaper studentPaper1=studentService.selStudentPapersByStuNum(stuNum);
   int index;
   if(studentPaper1==null) {
	   //FileUtils.copyInputStreamToFile(file.getInputStream (), new File(path));
	index=studentService.insertStudentPapers(studentPaper);
	//System.out.println(index);
	
   }else {
	   int checkStatus=0;
	   String paperAdvices=null;
	   index=studentService.updateStudentPapers(stuNum, paperPath, checkStatus, paperAdvices);
		
   }
   FileUtils.copyInputStreamToFile(file.getInputStream (), new File(path));
   if(index!=0) {
		map.put("uploadStatus","true");
	}else {
		map.put("uploadStatus","false");
	}
   return map;
	}
@RequestMapping("showPaper")
@ResponseBody
public Map<String,StudentPaper> showPaper(HttpSession session){
	int stuNum=((Student)session.getAttribute("student")).getNumber();
	Map<String, StudentPaper> map=new HashMap<String, StudentPaper>();
	StudentPaper studentPaper=studentService.selStudentPapersByStuNum(stuNum);
	//System.out.println(studentPaper);
	if(studentPaper!=null) {
		studentPaper.setPaperPath(stuNum+"_论文.doc");
		map.put("paper", studentPaper);
	}else {
		map=null;
	}
	return map;
}
@RequestMapping("downfile")
@ResponseBody
public void downloadPaperFile(HttpSession session,HttpServletResponse response,HttpServletRequest req) throws IOException {
	
	Student student =(Student)session.getAttribute("student");
	int stuNum=student.getNumber();
	String stuName=student.getName();
	StudentPaper studentPaper=studentService.selStudentPapersByStuNum(stuNum);
	String paperPath = studentPaper.getPaperPath();
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
}
