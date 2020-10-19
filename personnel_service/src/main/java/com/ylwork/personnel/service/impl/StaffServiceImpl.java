package com.ylwork.personnel.service.impl;

import com.ylwork.personnel.dao.StaffDao;
import com.ylwork.personnel.entity.Staff;
import com.ylwork.personnel.service.StaffService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service("staffService")
public class StaffServiceImpl implements StaffService {
    @Qualifier("staffDao")
    @Autowired
    private StaffDao staffDao;

    public void add(Staff staff) {
        staff.setPassword("12345");
        staff.setWorkTime(new Date());
        staff.setStatus("Normal");
        staffDao.insert(staff);
    }

    public void remove(Integer id) {
        staffDao.delete(id);
    }

    public void edit(Staff staff) {
        staffDao.update(staff);
    }

    public Staff get(Integer id) {
        return staffDao.selectById(id);
    }

    public List<Staff> getAll() {
        return staffDao.selectAll();
    }
}
