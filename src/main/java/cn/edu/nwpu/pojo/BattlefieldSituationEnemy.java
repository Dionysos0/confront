package cn.edu.nwpu.pojo;

public class BattlefieldSituationEnemy {
    private Integer id;

    private String baseName;

    private Float lastHp;

    private String point;

    public BattlefieldSituationEnemy(Integer id, String baseName, Float lastHp, String point) {
        this.id = id;
        this.baseName = baseName;
        this.lastHp = lastHp;
        this.point = point;
    }

    public BattlefieldSituationEnemy() {
        super();
    }

    public BattlefieldSituationEnemy(Integer id, Float lastHp, String point) {
        this.id = id;
        this.lastHp = lastHp;
        this.point = point;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBaseName() {
        return baseName;
    }

    public void setBaseName(String baseName) {
        this.baseName = baseName == null ? null : baseName.trim();
    }

    public Float getLastHp() {
        return lastHp;
    }

    public void setLastHp(Float lastHp) {
        this.lastHp = lastHp;
    }

    public String getPoint() {
        return point;
    }

    public void setPoint(String point) {
        this.point = point == null ? null : point.trim();
    }
}