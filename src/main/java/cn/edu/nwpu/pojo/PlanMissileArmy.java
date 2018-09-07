package cn.edu.nwpu.pojo;

public class PlanMissileArmy {
    private Integer id;

    private String missileName;

    private String belongBase;

    private String attackBase;

    public PlanMissileArmy(Integer id, String missileName, String belongBase, String attackBase) {
        this.id = id;
        this.missileName = missileName;
        this.belongBase = belongBase;
        this.attackBase = attackBase;
    }

    @Override
    public String toString() {
        return "PlanMissileArmy{" +
                "attackBase='" + attackBase + '\'' +
                '}';
    }

    public PlanMissileArmy() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMissileName() {
        return missileName;
    }

    public void setMissileName(String missileName) {
        this.missileName = missileName == null ? null : missileName.trim();
    }

    public String getBelongBase() {
        return belongBase;
    }

    public void setBelongBase(String belongBase) {
        this.belongBase = belongBase == null ? null : belongBase.trim();
    }

    public String getAttackBase() {
        return attackBase;
    }

    public void setAttackBase(String attackBase) {
        this.attackBase = attackBase == null ? null : attackBase.trim();
    }
}