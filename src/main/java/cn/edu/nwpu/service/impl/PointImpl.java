package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.pojo.BattlefieldSituationArmy;
import cn.edu.nwpu.pojo.BattlefieldSituationEnemy;
import cn.edu.nwpu.service.BattlefieldSituationArmyService;
import cn.edu.nwpu.service.BattlefieldSituationEnemyService;
import cn.edu.nwpu.service.Point;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PointImpl implements Point {

    @Autowired
    BattlefieldSituationArmyService battlefieldSituationArmyService;

    @Autowired
    BattlefieldSituationEnemyService battlefieldSituationEnemyService;

    @Override
    public String getArmyL(BattlefieldSituationArmy bs) {
        String point = battlefieldSituationArmyService.selectPointByIdName(bs);
        String[] str;
        str = point.split(",");
        return str[0];
    }

    @Override
    public String getArmyB(BattlefieldSituationArmy bs) {
        String point = battlefieldSituationArmyService.selectPointByIdName(bs);
        String[] str;
        str = point.split(",");
        return str[1];
    }

    @Override
    public String getEnemyL(BattlefieldSituationEnemy be) {
        String point = battlefieldSituationEnemyService.selectPointByIdName(be);
        String[] str;
        str = point.split(",");
        return str[0];
    }

    @Override
    public String getEnemyB(BattlefieldSituationEnemy be) {
        String point = battlefieldSituationEnemyService.selectPointByIdName(be);
        String[] str;
        str = point.split(",");
        return str[1];
    }
}
