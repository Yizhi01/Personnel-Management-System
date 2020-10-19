package com.ylwork.personnel.service;

import com.ylwork.personnel.entity.Staff;

public interface SelfService {
    Staff login(String account, String password);
    void changePassword(Integer id, String password);
}
