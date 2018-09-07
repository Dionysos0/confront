package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.RuleDefender;

import java.util.List;

public interface RuleDefenderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(RuleDefender record);

    int insertSelective(RuleDefender record);

    RuleDefender selectByPrimaryKey(Integer id);

    List<RuleDefender> selectAllDefenderRule();

    int updateByPrimaryKeySelective(RuleDefender record);

    int updateByPrimaryKey(RuleDefender record);
}