package controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pojo.Teacher;
import pojo.Sex;
import service.TeacherService;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    @Autowired
    TeacherService teacherService;

    Teacher teacher;

    @RequestMapping("/index.html")
    public String index(){
        return "index";
    }

    @RequestMapping("/getPage")
    @ResponseBody
    public PageInfo<Teacher> getPage(String pageNum, Model model){
        //需要优化,会使用分页工具,会使用JSON数据传输
        if (pageNum == null || "".equals(pageNum)){
            pageNum = "1";
        }
        int page = Integer.parseInt(pageNum);
        PageHelper.startPage(page,5);
        List<Teacher> list = teacherService.getPage();
        PageInfo<Teacher> pageInfo = new PageInfo<Teacher>(list);
        return pageInfo;
    }

    @RequestMapping("/add.html")
    public String add(){
        return "add";
    }

    //Spring支持对象的接收
    @RequestMapping("add")
    public String addUser(String t_name,String t_idcard,String t_loginName,String t_pwd,String sex){
        teacher = new Teacher(t_name,t_idcard,new Date(),t_loginName,t_pwd,new Sex(Integer.parseInt(sex),null));
        if (teacherService.addTeacher(teacher) != 0){
            return "index";
        }else{
            return "add";
        }

    }
    @RequestMapping("/del/{id}")
    @ResponseBody
    public int delUser(@PathVariable String id){
        return teacherService.delTeacher(Integer.parseInt(id));
    }

    @RequestMapping("/update.html")
    public String getone(int id,Model model){
        model.addAttribute("id",id);
        return "update";
    }

    @RequestMapping("/getOne")
    @ResponseBody
    public Teacher getOne(int id){
        return teacherService.getTeacherById(id);
    }

    @RequestMapping("/upd")
    public String updUser(String id,String t_name,String t_idcard,String t_loginName,String t_pwd,String sex){
        teacher = new Teacher(Integer.parseInt(id),t_name,t_idcard,new Date(),t_loginName,t_pwd,new Sex(Integer.parseInt(sex),null));
        if (teacherService.updTeacher(teacher) != 0){
            return "index";
        }else{
            return "add";
        }
    }
}
