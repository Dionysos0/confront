package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.dao.MixDefenderMapper;
import cn.edu.nwpu.pojo.MixDefender;
import cn.edu.nwpu.service.MixDefenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MixDefenderServiceImpl implements MixDefenderService {

    @Autowired
    private MixDefenderMapper mixDefenderMapper;

    @Override
    public MixDefender selectByPrimaryKey(Integer id) {
        return mixDefenderMapper.selectByPrimaryKey(id);
    }


    @Override
    public List<MixDefender> selectDefenderAll() {
        return mixDefenderMapper.selectDefenderAll();
    }
}
