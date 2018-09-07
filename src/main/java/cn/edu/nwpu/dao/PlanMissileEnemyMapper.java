package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.BattlefieldSituationEnemy;
import cn.edu.nwpu.pojo.PlanMissileEnemy;

import java.util.List;

public interface PlanMissileEnemyMapper {
    int insert(PlanMissileEnemy record);

    int insertSelective(PlanMissileEnemy record);

    List<String> selectMissileByBase(BattlefieldSituationEnemy be);

    List<PlanMissileEnemy> selectByAttackBase(BattlefieldSituationEnemy be);

    List<PlanMissileEnemy> selectById(Integer id);
}