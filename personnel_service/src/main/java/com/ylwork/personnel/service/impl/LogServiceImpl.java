package com.ylwork.personnel.service.impl;

import com.ylwork.personnel.dao.LogDao;
import com.ylwork.personnel.entity.Log;
import com.ylwork.personnel.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("logService")
public class LogServiceImpl implements LogService {

    @Qualifier("logDao")
    @Autowired
    private LogDao logDao;

    public void addSystemLog(Log log) {
        log.setOperateTime(new Date());
        log.setType("system");
        logDao.insert(log);
    }

    public void addLoginLog(Log log) {
        log.setOperateTime(new Date());
        log.setType("login");
        logDao.insert(log);

    }

    public void addOperationLog(Log log) {
        log.setOperateTime(new Date());
        log.setType("operation");
        logDao.insert(log);
    }

    public List<Log> getSystemLog() {
        return logDao.selectByType("system");
    }

    public List<Log> getLoginLog() {
        return logDao.selectByType("login");
    }

    public List<Log> getOperationLog() {
        return logDao.selectByType("operation");
    }
}
