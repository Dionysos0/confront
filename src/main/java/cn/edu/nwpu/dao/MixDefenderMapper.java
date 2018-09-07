package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.MixDefender;

import java.util.List;

public interface MixDefenderMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MixDefender record);

    int insertSelective(MixDefender record);

    List<MixDefender> selectDefenderAll();

    MixDefender selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(MixDefender record);

    int updateByPrimaryKey(MixDefender record);
}