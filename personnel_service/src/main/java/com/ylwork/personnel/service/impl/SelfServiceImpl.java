package com.ylwork.personnel.service.impl;

import com.ylwork.personnel.dao.SelfDao;
import com.ylwork.personnel.dao.StaffDao;
import com.ylwork.personnel.entity.Staff;
import com.ylwork.personnel.service.SelfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("selfService")
public class SelfServiceImpl implements SelfService {
    @Qualifier("selfDao")
    @Autowired
    private SelfDao selfDao;
    @Qualifier("staffDao")
    @Autowired
    private StaffDao staffDao;

    public Staff login(String account, String password) {
        Staff staff = selfDao.selectByAccount(account);
        if (staff == null) return null;
        if (staff.getPassword().equals(password)) return staff;
        return null;
    }

    public void changePassword(Integer id, String password) {
        Staff staff = staffDao.selectById(id);
        staff.setPassword(password);
        staffDao.update(staff);
    }
}
