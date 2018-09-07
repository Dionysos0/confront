package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.AirCraft;
import cn.edu.nwpu.pojo.SubMarine;

import java.util.List;

/**
 * Created by Dionysos on 2018/6/9.
 */
public interface BigDataService {

    List<AirCraft> selectAllAirCraft();

    List<SubMarine> selectAllSubMarine();
}
