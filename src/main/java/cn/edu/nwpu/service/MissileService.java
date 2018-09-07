package cn.edu.nwpu.service;

import cn.edu.nwpu.pojo.Missile;

import java.util.ArrayList;
import java.util.List;

public interface MissileService {

    int deleteByPrimaryKey(Integer id);

    int insert(Missile record);

    boolean insertSelective(Missile record);

    Missile selectByPrimaryKey(Integer id);

    List<Missile> selectAll();

    boolean updateByPrimaryKeySelective(Missile record);

    int updateByPrimaryKey(Missile record);

    ArrayList<String> missileNameList();
}
