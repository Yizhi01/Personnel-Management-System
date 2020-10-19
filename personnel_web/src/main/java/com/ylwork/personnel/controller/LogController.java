package com.ylwork.personnel.controller;

import com.ylwork.personnel.entity.Log;
import com.ylwork.personnel.service.LogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller("logController")
public class LogController {
    @Autowired
    private LogService logService;

    public void operationLog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Log> list = logService.getOperationLog();
        request.setAttribute("LOGLIST", list);
        request.setAttribute("TYPE", "Operation");
        request.getRequestDispatcher("/WEB-INF/pages/log_list.jsp").forward(request, response);
    }

    public void systemLog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Log> list = logService.getSystemLog();
        request.setAttribute("LOGLIST", list);
        request.setAttribute("TYPE", "System");
        request.getRequestDispatcher("/WEB-INF/pages/log_list.jsp").forward(request, response);
    }

    public void loginLog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Log> list = logService.getLoginLog();
        request.setAttribute("LOGLIST", list);
        request.setAttribute("TYPE", "Login/Logout");
        request.getRequestDispatcher("/WEB-INF/pages/log_list.jsp").forward(request, response);
    }
}
