package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.RuleAttack;

import java.util.List;

public interface RuleAttackMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RuleAttack record);

    int insertSelective(RuleAttack record);

    RuleAttack selectByPrimaryKey(Integer id);

    List<RuleAttack> selectAllAttackRule();

    int updateByPrimaryKeySelective(RuleAttack record);

    int updateByPrimaryKey(RuleAttack record);
}