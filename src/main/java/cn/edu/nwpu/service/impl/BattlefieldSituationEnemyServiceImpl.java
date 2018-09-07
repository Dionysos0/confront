package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.dao.BattlefieldSituationEnemyMapper;
import cn.edu.nwpu.pojo.BattlefieldSituationEnemy;
import cn.edu.nwpu.service.BattlefieldSituationEnemyService;
import cn.edu.nwpu.util.TheHp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class BattlefieldSituationEnemyServiceImpl implements BattlefieldSituationEnemyService {

    @Autowired
    private BattlefieldSituationEnemyMapper battlefieldSituationEnemyMapper;

    @Autowired
    private TheHp theHp;

    @Override
    public List<BattlefieldSituationEnemy> selectByBaseId(Integer id) {

        List<BattlefieldSituationEnemy> es = battlefieldSituationEnemyMapper.selectByBaseId(id);

        for (BattlefieldSituationEnemy e :
                es) {
            float v = theHp.evaluate_baseEnemy();
            e.setLastHp(v);
        }
        return es;
    }

    @Override
    public String selectPointByIdName(BattlefieldSituationEnemy be) {
        return battlefieldSituationEnemyMapper.selectPointByIdName(be);
    }

    @Override
    public BattlefieldSituationEnemy selectAllByIdName(BattlefieldSituationEnemy be) {
        return battlefieldSituationEnemyMapper.selectAllByIdName(be);
    }

    public List<String> getPoints(Integer id) {
        List<String> reslut = battlefieldSituationEnemyMapper.selectPointById(id);
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
