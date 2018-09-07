package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.BattlefieldSituationEnemy;

import java.util.ArrayList;
import java.util.List;

public interface BattlefieldSituationEnemyService {

    List<BattlefieldSituationEnemy> selectByBaseId(Integer id);

    String selectPointByIdName(BattlefieldSituationEnemy be);

    BattlefieldSituationEnemy selectAllByIdName(BattlefieldSituationEnemy be);

    List<ArrayList> findBasePointSeparateById(Integer id);

    List<String> findBasePointById(Integer id);
}
