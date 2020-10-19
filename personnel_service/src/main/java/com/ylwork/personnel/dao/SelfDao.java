package com.ylwork.personnel.dao;

import com.ylwork.personnel.entity.Staff;
import org.springframework.stereotype.Repository;

@Repository("selfDao")
public interface SelfDao {
    Staff selectByAccount(String account);
}
