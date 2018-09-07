package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.BattlefieldSituationEnemy;
import cn.edu.nwpu.pojo.PlanMissileEnemy;

import java.util.List;

public interface PlanMissileEnemyService {
    List<String> selectMissileByBase(BattlefieldSituationEnemy be);

    List<PlanMissileEnemy> selectByAttackBase(BattlefieldSituationEnemy be);

    List<String> selectById(Integer id);
}
