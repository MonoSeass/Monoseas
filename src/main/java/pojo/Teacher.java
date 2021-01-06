package pojo;

import java.util.Date;

public class Teacher {
    /*t_id int(11) NOT NULL 编号
    t_name varchar(255) NULL 姓名
    t_idcard varchar(255) NULL 身份证
    t_birthday date NULL 生日
    t_loginName varchar(255) NULL 账号
    t_pwd varchar(255) NULL 密码
    t_sex int(11) NULL 性别id*/
    private int t_id;
    private String t_name;
    private String t_idcard;
    private Date t_birthday;
    private String t_loginName;
    private String t_pwd;
    private Sex sex;

    public Teacher() {
    }

    public Teacher(String t_name, String t_idcard, Date t_birthday, String t_loginName, String t_pwd, Sex sex) {
        this.t_name = t_name;
        this.t_idcard = t_idcard;
        this.t_birthday = t_birthday;
        this.t_loginName = t_loginName;
        this.t_pwd = t_pwd;
        this.sex = sex;
    }

    public Teacher(int t_id, String t_name, String t_idcard, Date t_birthday, String t_loginName, String t_pwd, Sex sex) {
        this.t_id = t_id;
        this.t_name = t_name;
        this.t_idcard = t_idcard;
        this.t_birthday = t_birthday;
        this.t_loginName = t_loginName;
        this.t_pwd = t_pwd;
        this.sex = sex;
    }

    public int getT_id() {
        return t_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getT_idcard() {
        return t_idcard;
    }

    public void setT_idcard(String t_idcard) {
        this.t_idcard = t_idcard;
    }

    public Date getT_birthday() {
        return t_birthday;
    }

    public void setT_birthday(Date t_birthday) {
        this.t_birthday = t_birthday;
    }

    public String getT_loginName() {
        return t_loginName;
    }

    public void setT_loginName(String t_loginName) {
        this.t_loginName = t_loginName;
    }

    public String getT_pwd() {
        return t_pwd;
    }

    public void setT_pwd(String t_pwd) {
        this.t_pwd = t_pwd;
    }

    public Sex getSex() {
        return sex;
    }

    public void setSex(Sex sex) {
        this.sex = sex;
    }
}
