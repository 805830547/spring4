package com.zhangzq.helloworld.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhangzq.helloworld.model.Student;
import com.zhangzq.helloworld.persistence.StudentDao;

@Service
public class StudentService {

    @Autowired
    private StudentDao studentDao;

    public void getStudentMessage() {

        List<Student> studentList= studentDao.getStudent();
        for (Student student : studentList) {
            System.out.println(student.toString());
        }
    }

    public void setStudentMessage(List<Student> studentList) {

        studentDao.setStudent(studentList);
    }
}
