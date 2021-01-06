package dao;

import org.apache.ibatis.annotations.Param;
import pojo.Teacher;

import java.util.List;

/**
 * @author shinelon
 */
public interface TeacherMapper {

    List<Teacher> getPage();

    int addTeacher(Teacher teacher);

    int delTeacher(@Param("id") int id);

    int updTeacher(Teacher teacher);

    Teacher getTeacherById(@Param("id") int id);
}
