package service;

import dao.TeacherMapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pojo.Teacher;

import java.util.List;


@Transactional
@Service("teacherServiceimpl")@MapperScan("dao")
public class TeacherServiceimpl implements TeacherService {

    @Autowired
    TeacherMapper teacherMapper;

    public TeacherMapper getTeacherMapper() {
        return teacherMapper;
    }

    public void setTeacherMapper(TeacherMapper teacherMapper) {
        this.teacherMapper = teacherMapper;
    }

    @Override
    public List<Teacher> getPage() {
        return teacherMapper.getPage();
    }

    @Override
    public int addTeacher(Teacher teacher) {
        return teacherMapper.addTeacher(teacher);
    }

    @Override
    public int delTeacher(int id) {
        return teacherMapper.delTeacher(id);
    }

    @Override
    public int updTeacher(Teacher teacher) {
        return teacherMapper.updTeacher(teacher);
    }

    @Override
    public Teacher getTeacherById(int id) {
        return teacherMapper.getTeacherById(id);
    }
}
