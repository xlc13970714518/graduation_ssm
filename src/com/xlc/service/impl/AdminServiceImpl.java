package com.xlc.service.impl;

import java.util.List;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.xlc.mapper.AdminMapper;
import com.xlc.pojo.Admin;
import com.xlc.pojo.Dept;
import com.xlc.pojo.Major;
import com.xlc.service.AdminService;
@Service
public class AdminServiceImpl implements AdminService {
@Resource
 private AdminMapper adminMapper;
	@Override
	public Admin selAdmin(String name, String password) {
		// TODO Auto-generated method stub
		return adminMapper.selByNamePswd(name, password);
	}
	@Override
	public int updateAdmin(String name, String password,String newPassword) {
		// TODO Auto-generated method stub
	int count =adminMapper.updateByName(name, password, newPassword);
		return count;
	}
	@Override
	public List<Dept> selAllDept() {
		// TODO Auto-generated method stub
		return adminMapper.selAllDept();
	}
	@Override
	public List<Dept> selDeptPageQuery(int pageIndex, int size) {
		// TODO Auto-generated method stub
		return adminMapper.selDeptPageQuery(pageIndex, size);
	}
	@Override
	public int insertDept(Dept dept) {
		// TODO Auto-generated method stub
		return adminMapper.insertDept(dept);
	}
	@Override
	public List<Major> selMajorByDept_id(int dept_id) {
		// TODO Auto-generated method stub
		return adminMapper.selMajorByDept_id(dept_id);
	}
	@Override
	public List<Major> selMajorPageQueryByDept_id(int dept_id, int pageIndex, int size) {
		// TODO Auto-generated method stub
		return adminMapper.selMajorPageQueryByDept_id(dept_id, pageIndex, size);
	}
	@Override
	public int insertMajor(Major major) {
		// TODO Auto-generated method stub
		return adminMapper.insertMajor(major);
	}
	@Override
	public int deleteDept(int dept_id) {
		// TODO Auto-generated method stub
		return adminMapper.deleteDeptByDept_id(dept_id);
	}
	@Override
	public int deleteMajor(int major_id) {
		// TODO Auto-generated method stub
		return adminMapper.deleteMajorByMajor_id(major_id);
	}
	@Override
	public List<Major> selMajorsBydept_name(String dept_name) {
		// TODO Auto-generated method stub
		return adminMapper.selMajorsBydept_name(dept_name);
	}

}
