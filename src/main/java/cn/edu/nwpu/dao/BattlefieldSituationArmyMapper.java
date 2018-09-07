package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.BattlefieldSituationArmy;

import java.util.List;

public interface BattlefieldSituationArmyMapper {
    int insert(BattlefieldSituationArmy record);

    int insertSelective(BattlefieldSituationArmy record);

    List<BattlefieldSituationArmy> selectSituationsById(Integer id);

    List<BattlefieldSituationArmy> selectSituationsWithOutNameById(Integer id);

    List<BattlefieldSituationArmy> selectAll();

    String selectPointByIdName(BattlefieldSituationArmy bs);

    List<String> selectPointById(Integer id);

    BattlefieldSituationArmy selectAllByIdName(BattlefieldSituationArmy bs);

    BattlefieldSituationArmy selectBaseNameById(Integer id);
}