package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.Missile;

import java.util.List;

public interface MissileMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Missile record);

    int insertSelective(Missile record);

    Missile selectByPrimaryKey(Integer id);

    List<Missile> selectAll();

    List<Missile> selectMissileIdAndName();

    int updateByPrimaryKeySelective(Missile record);

    int updateByPrimaryKey(Missile record);

}