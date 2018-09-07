package cn.edu.nwpu.pojo;

/**
 * Created by Dionysos on 2018/2/6.
 */
public class EnemyPointDivided {
    private String base_name;
    private String l;
    private String b;
    private Float hp;
    private Integer Id;

    public EnemyPointDivided(String base_name, String l, String b, Float hp, Integer id) {
        this.base_name = base_name;
        this.l = l;
        this.b = b;
        this.hp = hp;
        Id = id;
    }

    public EnemyPointDivided() {
    }

    public String getBase_name() {
        return base_name;
    }

    public void setBase_name(String base_name) {
        this.base_name = base_name;
    }

    public String getL() {
        return l;
    }

    public void setL(String l) {
        this.l = l;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    public Float getHp() {
        return hp;
    }

    public void setHp(Float hp) {
        this.hp = hp;
    }

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }
}
