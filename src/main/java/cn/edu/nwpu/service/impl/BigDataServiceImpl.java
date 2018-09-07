package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.dao.AirCraftMapper;
import cn.edu.nwpu.dao.SubMarineMapper;
import cn.edu.nwpu.pojo.AirCraft;
import cn.edu.nwpu.pojo.SubMarine;
import cn.edu.nwpu.service.BigDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Dionysos on 2018/6/9.
 */
@Service
public class BigDataServiceImpl implements BigDataService {

    @Autowired
    AirCraftMapper airCraftMapper;

    @Autowired
    SubMarineMapper subMarineMapper;

    @Override
    public List<AirCraft> selectAllAirCraft() {
        return airCraftMapper.selectAll();
    }

    @Override
    public List<SubMarine> selectAllSubMarine() {
        return subMarineMapper.selectAll();
    }
}
