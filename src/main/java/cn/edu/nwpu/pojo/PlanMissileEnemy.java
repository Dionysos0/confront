package cn.edu.nwpu.pojo;

public class PlanMissileEnemy {
    private Integer id;

    private String missileName;

    private String belongBase;

    private String attackBase;

    public PlanMissileEnemy(Integer id, String missileName, String belongBase, String attackBase) {
        this.id = id;
        this.missileName = missileName;
        this.belongBase = belongBase;
        this.attackBase = attackBase;
    }

    public PlanMissileEnemy() {
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