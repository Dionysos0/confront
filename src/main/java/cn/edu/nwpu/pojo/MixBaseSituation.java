package cn.edu.nwpu.pojo;

import java.util.List;

public class MixBaseSituation {
    Integer id;
    List<ArmyBaseWithMissile> armyBaseWithMissile;
    List<EnemyBaseWithMissile> enemyBaseWithMissile;

    @Override
    public String toString() {
        return "MixBaseSituation{" +
                "id=" + id +
                ", armyBaseWithMissile=" + armyBaseWithMissile +
                ", enemyBaseWithMissile=" + enemyBaseWithMissile +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setEnemyBaseWithMissile(List<EnemyBaseWithMissile> enemyBaseWithMissile) {
        this.enemyBaseWithMissile = enemyBaseWithMissile;
    }

    public void setArmyBaseWithMissile(List<ArmyBaseWithMissile> armyBaseWithMissile) {
        this.armyBaseWithMissile = armyBaseWithMissile;
    }

    public List<ArmyBaseWithMissile> getArmyBaseWithMissile() {
        return armyBaseWithMissile;
    }

    public List<EnemyBaseWithMissile> getEnemyBaseWithMissile() {
        return enemyBaseWithMissile;
    }
}
