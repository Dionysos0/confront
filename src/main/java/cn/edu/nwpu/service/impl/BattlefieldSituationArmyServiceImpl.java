package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.dao.BattlefieldSituationArmyMapper;
import cn.edu.nwpu.pojo.BattlefieldSituationArmy;
import cn.edu.nwpu.service.BattlefieldSituationArmyService;
import cn.edu.nwpu.service.Point;
import cn.edu.nwpu.util.TheHp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BattlefieldSituationArmyServiceImpl implements BattlefieldSituationArmyService {

    @Autowired
    private Point point;

    @Autowired
    private TheHp theHp;

    @Autowired
    private BattlefieldSituationArmyMapper battlefieldSituationArmyMapper;

    @Override
    public List<BattlefieldSituationArmy> selectSituationsById(Integer id) {

        List<BattlefieldSituationArmy> as = battlefieldSituationArmyMapper.selectSituationsById(id);

        for (BattlefieldSituationArmy a : as) {
            float v = theHp.evaluate_base();
            a.setLastHp(v);
        }
        return as;
    }

    @Override
    public List<BattlefieldSituationArmy> selectAll() {
        return battlefieldSituationArmyMapper.selectAll();
    }

    @Override
    public String selectPointByIdName(BattlefieldSituationArmy bs) {
        return battlefieldSituationArmyMapper.selectPointByIdName(bs);
    }

    @Override
    public BattlefieldSituationArmy selectAllByIdName(BattlefieldSituationArmy bs) {
        return battlefieldSituationArmyMapper.selectAllByIdName(bs);
    }

    @Override
    public List<String> findBaseNameById(Integer id) {
//        base_0 -- base_9
        ArrayList<String> baseNameList = new ArrayList<>();
        String base = "号基地";
        for (int i = 0; i < 10; i++) {
            baseNameList.add(i + base);
        }
        return baseNameList;
    }

    public List<String> getPoints(Integer id) {
        List<String> reslut = battlefieldSituationArmyMapper.selectPointById(id);
        ArrayList<String> newPoints = new ArrayList<>();
        for (String s : reslut) {
            String[] points = s.split("\\,");
            points[0] = points[0].substring(0, 8);
            points[1] = points[1].substring(0, 8);
            newPoints.add(points[0] + "," + points[1]);
        }
        return newPoints;
    }

    @Override
    public List<ArrayList> findBasePointSeparateById(Integer id) {
        List<String> result = this.getPoints(id);
        ArrayList<String> viewPointX = new ArrayList<>();
        ArrayList<String> viewPointY = new ArrayList<>();
        ArrayList<ArrayList> viewPoint = new ArrayList<>();
        for (String point : result) {
            String[] points = point.split("\\,");
            viewPointX.add(points[0]);
            viewPointY.add(points[1]);
        }
        viewPoint.add(viewPointX);
        viewPoint.add(viewPointY);
        return viewPoint;
    }

    @Override
    public List<String> findBasePointById(Integer id) {
        return this.getPoints(id);
    }
}
