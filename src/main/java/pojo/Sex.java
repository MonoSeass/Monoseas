package pojo;

public class Sex {
    /*s_id int(10) NOT NULL编号
    s_sex varchar(50) NULL性别*/
    private int s_id;
    private String s_sex;

    public Sex() {
    }

    public Sex(int s_id, String s_sex) {
        this.s_id = s_id;
        this.s_sex = s_sex;
    }

    public int getS_id() {
        return s_id;
    }

    public void setS_id(int s_id) {
        this.s_id = s_id;
    }

    public String getS_sex() {
        return s_sex;
    }

    public void setS_sex(String s_sex) {
        this.s_sex = s_sex;
    }
}
