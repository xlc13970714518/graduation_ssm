package com.xlc.service;

import java.util.List;

import com.xlc.pojo.Admin;
import com.xlc.pojo.Dept;
import com.xlc.pojo.Major;

public interface AdminService  {
 public Admin selAdmin(String name,String password);
 public int updateAdmin(String name,String password,String newPassword);
 public List<Dept> selAllDept();//查询所有系部
 public List<Dept>  selDeptPageQuery(int pageIndex,int size);//分页查询dept
 public int insertDept(Dept dept);//插入系部
 public int deleteDept(int dept_id);//删除系部
 public List<Major> selMajorByDept_id(int dept_id);//根据系部号查询所有专业
 public List<Major> selMajorPageQueryByDept_id(int dept_id, int pageIndex,int size);//根据系系部号分页查询专业
 public int insertMajor(Major major);//插入专业
 public int deleteMajor(int major_id);//删除专业
 public List<Major> selMajorsBydept_name(String dept_name);//根据系部名查询所有专业
}
