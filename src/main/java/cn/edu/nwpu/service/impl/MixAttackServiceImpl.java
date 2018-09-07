package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.dao.MixAttackMapper;
import cn.edu.nwpu.pojo.MixAttack;
import cn.edu.nwpu.service.MixAttackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MixAttackServiceImpl implements MixAttackService {

    @Autowired
    private MixAttackMapper mixAttackMapper;

    @Override
    public MixAttack selectByPrimaryKey(Integer id) {
        return mixAttackMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<MixAttack> selectAll() {
        return mixAttackMapper.selectAll();
    }

}
