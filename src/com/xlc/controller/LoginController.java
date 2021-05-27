package com.xlc.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.xlc.pojo.Admin;
import com.xlc.pojo.Student;
import com.xlc.pojo.Teacher;
import com.xlc.service.AdminService;
import com.xlc.service.StudentService;
import com.xlc.service.TeacherService;

@Controller
public class LoginController {
@Resource
 private AdminService adminService;
@Resource
private StudentService studentService;
@Resource
private TeacherService teacherService;
@RequestMapping("login")
@ResponseBody
public Map<String, String> login(String name,String password,String role,String code,HttpSession httpSession) {
	String codeStr=(String)httpSession.getAttribute("code");
	Map<String, String> map=new HashMap<String, String>();
	map.put("code", "1");
	map.put("sure", "1");
	System.out.println("codeStr"+codeStr);
	if(code.equals(codeStr)) {
		if(role.equals("admin")) {
		Admin admin=adminService.selAdmin(name, password);
		if(admin!=null)
		{
           httpSession.setAttribute("admin", admin);
			map.put("role", "admin");
			return map;
		}else {
			map.put("sure", "0");//用户名和密码错误
		    return map;
		}
	}
	else if(role.equals("teacher")) {
		Teacher teacher=teacherService.selTeacher(name, password);
		if(teacher!=null) {
			httpSession.setAttribute("teacher", teacher);
			map.put("role", "teacher");
			return map;
		}
		else {
			map.put("sure", "0");
			return map;
		}
	}
	else {
		Student student=studentService.selStudent(name, password);
		if(student!=null)
		{
			httpSession.setAttribute("student", student);
			map.put("role", "student");
			return map;
			}
		else {
			map.put("sure", "0");
			return map;
		}
	}
	}else {
		map.put("code", "0");//验证码错误
		return map;
	}
	
}
@RequestMapping("code")
@ResponseBody
public  void valideCode(HttpServletRequest req,HttpServletResponse resp) throws IOException {
	//创建一张图片 单位像素
			BufferedImage image=new BufferedImage(200, 100, BufferedImage.TYPE_INT_RGB);
			//向画板上画内容之前先设置画笔
			Graphics2D gra=image.createGraphics();
			gra.setColor(Color.WHITE);
		    //坐标(.)开始填充，表示矩形区域
			gra.fillRect(0, 0, 200, 100);
			List<Integer>randlist=new ArrayList<Integer>();
			Random random=new Random();
			for(int i=0;i<4;i++) {
				randlist.add(random.nextInt(10));
			}
			Color []colors=new Color[]{Color.black,Color.orange,Color.green,Color.blue,Color.red,Color.PINK};
			gra.setFont(new Font("宋体",Font.ITALIC|Font.BOLD,30));
			for(int i=0;i<randlist.size();i++) {
				gra.setColor(colors[random.nextInt(colors.length)]);
				gra.drawString(randlist.get(i)+"",i*40,70+(random.nextInt(21)-10));
			}
			for(int i=0;i<2;i++) {
				gra.setColor(colors[random.nextInt(colors.length)]);
				gra.drawLine(0, random.nextInt(101), 200, random.nextInt(101));
			}
			
			//字节输出流的子类ServletOutputString
			ServletOutputStream outputStream=resp.getOutputStream();
			//工具类ImageIO类中的write()把图片对象输出到输出流。
			ImageIO.write(image, "jpg", outputStream);
			//获取session
			HttpSession session=req.getSession();
			session.setAttribute("code",""+randlist.get(0)+randlist.get(1)+randlist.get(2)+randlist.get(3));
			System.out.println(""+randlist.get(0)+randlist.get(1)+randlist.get(2)+randlist.get(3));
	}

}
