package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.BattlefieldSituationArmy;

import java.util.ArrayList;
import java.util.List;

public interface BattlefieldSituationArmyService {

    List<BattlefieldSituationArmy> selectSituationsById(Integer id);

    List<BattlefieldSituationArmy> selectAll();

    String selectPointByIdName(BattlefieldSituationArmy bs);

    BattlefieldSituationArmy selectAllByIdName(BattlefieldSituationArmy bs);

    List<String> findBaseNameById(Integer id);

    List<ArrayList> findBasePointSeparateById(Integer id);

    List<String> findBasePointById(Integer id);
}
