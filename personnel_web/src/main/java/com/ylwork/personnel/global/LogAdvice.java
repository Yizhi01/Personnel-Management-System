package com.ylwork.personnel.global;

import com.ylwork.personnel.entity.Log;
import com.ylwork.personnel.entity.Staff;
import com.ylwork.personnel.service.LogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Component
@Aspect
public class LogAdvice {
    @Autowired
    private LogService logService;

    /*
    After CRUD operations of staff and departments, excluding the methods in SelfController
    and ones that redirect to pages, this operationLog method executes.
     */
    @AfterReturning("execution(* com.ylwork.personnel.controller.*.*(..)) " +
            "&& !execution(* com.ylwork.personnel.controller.SelfController.*(..)) " +
            "&& !execution(* com.ylwork.personnel.controller.LogController.*(..)) " +
            "&& !execution(* com.ylwork.personnel.controller.*.to*(..))")
    public void operationLog(JoinPoint joinPoint) {
        Log log = new Log();
        log.setModule(joinPoint.getTarget().getClass().getSimpleName()); // get the proxy class name as log module
        log.setOperation(joinPoint.getSignature().getName()); // get the executed method name as operation
        // get the attribute "USER" from the session and set its account name as operator
        HttpServletRequest request = (HttpServletRequest)joinPoint.getArgs()[0];
        HttpSession session = request.getSession();
        Object obj = session.getAttribute("USER");
        Staff staff = (Staff)obj;
        log.setOperator(staff.getAccount());
        log.setResult("Success"); // set result
        logService.addOperationLog(log);
    }

    /*
    If the methods in DepartmentController and StaffController get errors, this systemLog method executes.
     */
    @AfterThrowing(throwing = "e", pointcut = "execution(* com.ylwork.personnel.controller.*.*(..)) " +
            "&& !execution(* com.ylwork.personnel.controller.SelfController.*(..)) ")
    public void systemLog(JoinPoint joinPoint, Throwable e) {
        Log log = new Log();
        log.setModule(joinPoint.getTarget().getClass().getSimpleName());
        log.setOperation(joinPoint.getSignature().getName());
        HttpServletRequest request = (HttpServletRequest)joinPoint.getArgs()[0];
        HttpSession session = request.getSession();
        Object obj = session.getAttribute("USER");
        Staff staff = (Staff)obj;
        log.setOperator(staff.getAccount());
        log.setResult(e.getClass().getSimpleName()); // get the error name as result
        logService.addSystemLog(log);
    }

    /*
    After login method of SelfController executes, this loginLog method executes.
    */
    @AfterReturning("execution(* com.ylwork.personnel.controller.SelfController.login(..))")
    public void loginLog(JoinPoint joinPoint) {
        log(joinPoint);
    }

    /*
    Before logout method of SelfController executes, this logoutLog method executes.
    */
    @Before("execution(* com.ylwork.personnel.controller.SelfController.logout(..))")
    public void logoutLog(JoinPoint joinPoint) {
        log(joinPoint);
    }

    private void log(JoinPoint joinPoint) {
        Log log = new Log();
        log.setModule(joinPoint.getTarget().getClass().getSimpleName());
        log.setOperation(joinPoint.getSignature().getName());
        HttpServletRequest request = (HttpServletRequest)joinPoint.getArgs()[0];
        HttpSession session = request.getSession();
        Object obj = session.getAttribute("USER");
        if (obj == null) { // records failure log
            log.setOperator(request.getParameter("account"));
            log.setResult("Failure");
        } else {
            Staff staff = (Staff)obj; // records success log
            log.setOperator(staff.getAccount());
            log.setResult("Success");
        }
        logService.addLoginLog(log);
    }

}
