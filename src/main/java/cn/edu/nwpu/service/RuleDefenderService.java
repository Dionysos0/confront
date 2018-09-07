package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.RuleDefender;

import java.util.List;

public interface RuleDefenderService {

    RuleDefender selectByPrimaryKey(Integer id);

    List<RuleDefender> selectAllDefenderRule();

    boolean insertSelective(RuleDefender record);

}
