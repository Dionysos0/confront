package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.MixAttack;

import java.util.List;

public interface MixAttackMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(MixAttack record);

    int insertSelective(MixAttack record);

    MixAttack selectByPrimaryKey(Integer id);

    List<MixAttack> selectAll();

    int updateByPrimaryKeySelective(MixAttack record);

    int updateByPrimaryKey(MixAttack record);
}