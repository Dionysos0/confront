package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.BattlefieldSituationEnemy;
import org.springframework.stereotype.Component;

import java.util.List;

public interface BattlefieldSituationEnemyMapper {
    int insert(BattlefieldSituationEnemy record);

    int insertSelective(BattlefieldSituationEnemy record);

    List<BattlefieldSituationEnemy> selectByBaseId(Integer id);

    List<BattlefieldSituationEnemy> selectSituationsWithOutNameById(Integer id);

    String selectPointByIdName(BattlefieldSituationEnemy be);

    List<String> selectPointById(Integer id);

    BattlefieldSituationEnemy selectAllByIdName(BattlefieldSituationEnemy be);
}