package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.controller.ConsoleController;
import cn.edu.nwpu.dao.PlanMissileArmyMapper;
import cn.edu.nwpu.pojo.BattlefieldSituationArmy;
import cn.edu.nwpu.pojo.PlanMissileArmy;
import cn.edu.nwpu.service.PlanMissileArmyService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class PlanMissileArmyServiceImpl implements PlanMissileArmyService {

    public static final Log logger = LogFactory.getLog(ConsoleController.class);

    @Autowired
    private PlanMissileArmyMapper planMissileArmyMapper;

    @Override
    public List<String> selectById(Integer id) {
        List<PlanMissileArmy> planMissileArmies = planMissileArmyMapper.selectById(id);
        List<String> armyAttackBase = new ArrayList<>();
        for (PlanMissileArmy planMissileArmy : planMissileArmies) {
//            Integer id1 = planMissileArmy.getId();
            String attackBase = planMissileArmy.getAttackBase();
            String s = 1 + attackBase;
            armyAttackBase.add(s);
        }
        return armyAttackBase;
    }

    @Override
    public List<PlanMissileArmy> selectAttackBaseById(Integer id) {
        return planMissileArmyMapper.selectAttackBaseById(id);
    }

    @Override
    public List<String> selectMissileByBase(BattlefieldSituationArmy bs) {
        return planMissileArmyMapper.selectMissileByBase(bs);
    }

    @Override
    public List<PlanMissileArmy> selectByAttackBase(BattlefieldSituationArmy bs) {
        return planMissileArmyMapper.selectByAttackBase(bs);
    }
}
