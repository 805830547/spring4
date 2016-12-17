package com.zhangzq.helloworld.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhangzq.helloworld.model.Student;

public interface StudentDao {

    public void setStudent(@Param("list") List<Student> studentList);

    public List<Student> getStudent();
}
