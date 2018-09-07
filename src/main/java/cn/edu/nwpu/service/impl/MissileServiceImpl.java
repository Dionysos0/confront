package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.dao.MissileMapper;
import cn.edu.nwpu.pojo.Missile;
import cn.edu.nwpu.service.MissileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class MissileServiceImpl implements MissileService {

    @Autowired
    private MissileMapper missileMapper;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Missile record) {
        return 0;
    }

    @Override
    public boolean insertSelective(Missile record) {
        int i = missileMapper.insertSelective(record);
        return (i == 1) ? true : false;
    }

    @Override
    public Missile selectByPrimaryKey(Integer id) {
        return missileMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Missile> selectAll() {
        return missileMapper.selectAll();
    }

    @Override
    public boolean updateByPrimaryKeySelective(Missile record) {
        int i = missileMapper.updateByPrimaryKeySelective(record);
        return (i == 1) ? true : false;
    }

    @Override
    public int updateByPrimaryKey(Missile record) {
        return 0;
    }

    /**
     * 拿到导弹名称列表
     *
     * @return 导弹名称组成的集合
     */
    @Override
    public ArrayList<String> missileNameList() {
        Random random = new Random();
        List<Missile> missileList = missileMapper.selectMissileIdAndName();
        ArrayList<String> missileNames = new ArrayList<>();
        int id;
        for (int i = 0; i <= 7; i++) {
            id = random.nextInt(30);
            missileNames.add(missileList.get(id).getMissileName());
        }
        return missileNames;
    }

}
