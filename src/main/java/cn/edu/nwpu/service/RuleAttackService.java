package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.RuleAttack;

import java.util.List;

public interface RuleAttackService {

    RuleAttack selectByPrimaryKey(Integer id);

    List<RuleAttack> selectAllAttackRule();

    boolean insertSelective(RuleAttack record);

    boolean insert(RuleAttack record);

}
