package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.BattlefieldSituationArmy;
import cn.edu.nwpu.pojo.PlanMissileArmy;

import java.util.List;

public interface PlanMissileArmyService {

    List<String> selectById(Integer id);

    List<PlanMissileArmy> selectAttackBaseById(Integer id);

    List<PlanMissileArmy> selectByAttackBase(BattlefieldSituationArmy bs);

    List<String> selectMissileByBase(BattlefieldSituationArmy bs);

}
