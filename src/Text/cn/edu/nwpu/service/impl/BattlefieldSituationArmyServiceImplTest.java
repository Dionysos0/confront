package cn.edu.nwpu.service.impl;

import cn.edu.nwpu.pojo.BattlefieldSituationArmy;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: xxm
 * Date: 2018-04-18
 * Time: 21:40
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class BattlefieldSituationArmyServiceImplTest {

    @Autowired
    BattlefieldSituationArmyServiceImpl battlefieldSituationArmyService;

    @Test
    public void findBasePointById() {
        List<ArrayList> points = battlefieldSituationArmyService.findBasePointSeparateById(1);
        for (ArrayList point : points) {
            System.out.println(point.get(0) + "" + point.get(1));
        }
    }

    @Test
    public void getPoints() {
        List<String> points = battlefieldSituationArmyService.getPoints(1);
        for (String point : points) {
            System.out.println(point);
        }
    }

    @Test
    public void testSelectPointByIdName() {
        BattlefieldSituationArmy battlefieldSituationArmy = new BattlefieldSituationArmy();
        battlefieldSituationArmy.setId(1);
        battlefieldSituationArmy.setBaseNmae("base_4");
        String s = battlefieldSituationArmyService.selectPointByIdName(battlefieldSituationArmy);
        String[] str;
        str = s.split("\\,");
        System.out.println(str[0]);
        System.out.println(str[1]);
    }
}