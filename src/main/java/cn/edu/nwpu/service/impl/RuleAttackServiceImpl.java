package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.dao.RuleAttackMapper;
import cn.edu.nwpu.pojo.RuleAttack;
import cn.edu.nwpu.service.RuleAttackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RuleAttackServiceImpl implements RuleAttackService {

    @Autowired
    private RuleAttackMapper ruleAttackMapper;

    @Override
    public RuleAttack selectByPrimaryKey(Integer id) {
        return ruleAttackMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<RuleAttack> selectAllAttackRule() {
        return ruleAttackMapper.selectAllAttackRule();
    }

    @Override
    public boolean insertSelective(RuleAttack record) {
        int i = ruleAttackMapper.insertSelective(record);
        return (i == 1) ? true : false;
    }

    @Override
    public boolean insert(RuleAttack record) {
        int i = ruleAttackMapper.insert(record);
        return (i == 1) ? true : false;
    }
}
