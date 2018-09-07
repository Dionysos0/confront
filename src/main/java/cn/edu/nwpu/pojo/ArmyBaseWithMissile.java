package cn.edu.nwpu.pojo;

import java.util.List;

public class ArmyBaseWithMissile {
    private String base_name;
    private String l;
    private String b;
    private Float hp;
    private List<String> missile;
    public ArmyBaseWithMissile(String l, String b, List<String> missile){
        this.l=l;
        this.b=b;
        this.missile=missile;
    }
    public ArmyBaseWithMissile(){}
    public String getBase_name() {
        return base_name;
    }

    public void setBase_name(String base_name) {
        this.base_name = base_name;
    }

    public Float getHp() {
        return hp;
    }

    public void setHp(Float hp) {
        this.hp = hp;
    }

    public String getB() {
        return b;
    }

    public String getL() {
        return l;
    }

    public List<String> getMissile() {
        return missile;
    }

    public void setB(String b) {
        this.b = b;
    }

    public void setL(String l) {
        this.l = l;
    }

    public void setMissile(List<String> missile) {
        this.missile = missile;
    }
}
