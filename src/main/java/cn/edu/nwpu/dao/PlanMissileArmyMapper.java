package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.BattlefieldSituationArmy;
import cn.edu.nwpu.pojo.PlanMissileArmy;

import java.util.List;

public interface PlanMissileArmyMapper {
    int insert(PlanMissileArmy record);

    int insertSelective(PlanMissileArmy record);

    List<PlanMissileArmy> selectById(Integer id);

    List<PlanMissileArmy> selectAttackBaseById(Integer id);

    List<String> selectMissileByBase(BattlefieldSituationArmy bs);

    List<PlanMissileArmy> selectByAttackBase(BattlefieldSituationArmy bs);
}