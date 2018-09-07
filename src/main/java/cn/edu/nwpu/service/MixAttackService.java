package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.MixAttack;

import java.util.List;

public interface MixAttackService {

    MixAttack selectByPrimaryKey(Integer id);

    List<MixAttack> selectAll();

}
