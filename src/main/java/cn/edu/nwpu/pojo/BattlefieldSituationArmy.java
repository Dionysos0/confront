package cn.edu.nwpu.pojo;

public class BattlefieldSituationArmy {
    private Integer id;

    private String baseNmae;

    private Float lastHp;

    private String point;

    public BattlefieldSituationArmy(String baseNmae) {
        this.baseNmae = baseNmae;
    }

    public BattlefieldSituationArmy(Integer id, String baseNmae, Float lastHp, String point) {
        this.id = id;
        this.baseNmae = baseNmae;
        this.lastHp = lastHp;
        this.point = point;
    }

    public BattlefieldSituationArmy(Integer id, Float lastHp, String point) {
        this.id = id;
        this.lastHp = lastHp;
        this.point = point;
    }

    public BattlefieldSituationArmy() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBaseNmae() {
        return baseNmae;
    }

    public void setBaseNmae(String baseNmae) {
        this.baseNmae = baseNmae == null ? null : baseNmae.trim();
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