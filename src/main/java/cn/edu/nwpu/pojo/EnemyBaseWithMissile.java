package cn.edu.nwpu.pojo;

import java.util.List;

public class EnemyBaseWithMissile {
    private String l;
    private String b;
    private List<String> missile;
    private Float hp;
    private String basename;
    public EnemyBaseWithMissile(String l, String b, List<String> missile){
        this.l=l;
        this.b=b;
        this.missile=missile;
    }
    public EnemyBaseWithMissile(){}

    public String getBasename() {
        return basename;
    }

    public void setBasename(String basename) {
        this.basename = basename;
    }

    public void setHp(Float hp) {
        this.hp = hp;
    }

    public Float getHp() {
        return hp;
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
