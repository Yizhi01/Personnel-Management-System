package com.ylwork.personnel.service.impl;

import com.ylwork.personnel.dao.DepartmentDao;
import com.ylwork.personnel.entity.Department;
import com.ylwork.personnel.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("departmentService")
public class DepartmentServiceImpl implements DepartmentService {

    @Qualifier("departmentDao")
    @Autowired
    private DepartmentDao departmentDao;

    public void add(Department department) {
        departmentDao.insert(department);
    }

    public void remove(Integer id) {
        departmentDao.delete(id);
    }

    public void edit(Department department) {
        departmentDao.update(department);
    }

    public Department get(Integer id) {
        return departmentDao.selectById(id);
    }

    public List<Department> getAll() {
        return departmentDao.selectAll();
    }
}
