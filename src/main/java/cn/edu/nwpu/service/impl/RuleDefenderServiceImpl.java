package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.dao.RuleDefenderMapper;
import cn.edu.nwpu.pojo.RuleDefender;
import cn.edu.nwpu.service.RuleDefenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
//@Transactional
public class RuleDefenderServiceImpl implements RuleDefenderService {

    @Autowired
    private RuleDefenderMapper ruleDefenderMapper;

    @Override
    public RuleDefender selectByPrimaryKey(Integer id) {
        return ruleDefenderMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<RuleDefender> selectAllDefenderRule() {
        return ruleDefenderMapper.selectAllDefenderRule();
    }

    @Override
    public boolean insertSelective(RuleDefender record) {
        int i = ruleDefenderMapper.insertSelective(record);
        return (i == 1) ? true : false;
    }
}
