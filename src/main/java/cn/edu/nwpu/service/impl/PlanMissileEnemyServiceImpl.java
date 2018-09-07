package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.dao.PlanMissileEnemyMapper;
import cn.edu.nwpu.pojo.BattlefieldSituationEnemy;
import cn.edu.nwpu.pojo.PlanMissileArmy;
import cn.edu.nwpu.pojo.PlanMissileEnemy;
import cn.edu.nwpu.service.PlanMissileEnemyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PlanMissileEnemyServiceImpl implements PlanMissileEnemyService {
    @Autowired
    private PlanMissileEnemyMapper planMissileEnemyMapper;

    @Override
    public List<String> selectMissileByBase(BattlefieldSituationEnemy be) {
        return planMissileEnemyMapper.selectMissileByBase(be);
    }

    @Override
    public List<PlanMissileEnemy> selectByAttackBase(BattlefieldSituationEnemy be) {
        return planMissileEnemyMapper.selectByAttackBase(be);
    }

    @Override
    public List<String> selectById(Integer id) {
        List<PlanMissileEnemy> planMissileEnemies = planMissileEnemyMapper.selectById(id);
        List<String> armyAttackBase = new ArrayList<>();
        for (PlanMissileEnemy planMissileEnemy : planMissileEnemies) {
//            Integer id1 = planMissileEnemy.getId();
            String attackBase = planMissileEnemy.getAttackBase();
            String s = 2 + attackBase;
            armyAttackBase.add(s);
        }
        return armyAttackBase;
    }
}
