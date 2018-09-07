package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.MixDefender;

import java.util.List;

public interface MixDefenderService{

    MixDefender selectByPrimaryKey(Integer id);
    List<MixDefender> selectDefenderAll();

}
