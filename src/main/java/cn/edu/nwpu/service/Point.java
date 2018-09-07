package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.BattlefieldSituationArmy;
import cn.edu.nwpu.pojo.BattlefieldSituationEnemy;
import org.springframework.stereotype.Component;

/**
 * Created by Dionysos on 2018/1/22.
 */
public interface Point {
    String getArmyL(BattlefieldSituationArmy bs);

    String getArmyB(BattlefieldSituationArmy bs);

    String getEnemyL(BattlefieldSituationEnemy be);

    String getEnemyB(BattlefieldSituationEnemy be);
}
