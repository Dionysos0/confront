package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.*;

import java.util.List;

/**
 * Created by Dionysos on 2018/1/22.
 */
public interface ControlStage {
    ArmyBaseWithMissile findArmyBaseWithMissile(Integer id, String basename);

    EnemyBaseWithMissile findEnemyBaseWithMissile(Integer id, String basename);

    List<PlanMissileArmy> selectByArmyAttackBase(Integer id, String attackbase);

    List<PlanMissileEnemy> selectByEnemyAttackBase(Integer id, String attackbase);

    BattlefieldSituationArmy selectAllArmyByIdName(Integer id, String basename);

    BattlefieldSituationEnemy selectAllEnemyByIdName(Integer id, String basename);

    MixBaseSituation findAllBase(Integer id);

    MixBaseSituation findAllPoints(Integer id);

}
