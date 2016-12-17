package com.zhangzq.helloworld.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhangzq.helloworld.model.Student;
import com.zhangzq.helloworld.service.StudentService;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;
    private static Logger LOGGER = Logger.getLogger(StudentController.class);

    @RequestMapping(value = "/student")
    public String hello(HttpServletRequest request) {
        LOGGER.info("Mybatis Test ...");
        studentService.getStudentMessage();

        return "index";
    }

    @RequestMapping(value = "/setStudent", produces = "text/html;charset=UTF-8")
    public String setStudent2(HttpServletRequest request) {
        LOGGER.info("Set Student Start ...");
        System.out.println(request.getParameter("name"));
        System.out.println(request.getParameter("age"));
        List<Student> studentList = new ArrayList<Student>();
        studentList.add(new Student(request.getParameter("name"), Integer.parseInt(request.getParameter("age"))));
        studentService.setStudentMessage(studentList);

        return "index";
    }

}