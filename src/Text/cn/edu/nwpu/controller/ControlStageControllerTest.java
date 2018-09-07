package cn.edu.nwpu.controller;

import cn.edu.nwpu.service.BattlefieldSituationArmyService;
import cn.edu.nwpu.service.BattlefieldSituationEnemyService;
import cn.edu.nwpu.service.MissileService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;

import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: xxm
 * Date: 2018-05-02
 * Time: 12:04
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class ControlStageControllerTest {

    @Autowired
    MissileService missileService;

    @Autowired
    BattlefieldSituationArmyService battlefieldSituationArmyService;

    @Autowired
    BattlefieldSituationEnemyService battlefieldSituationEnemyService;

    @Test
    public void text() {

        for (int i = 1; i <= 40; i++) {
            System.out.println("@RequestParam(defaultValue = \"2\", value = \"num" + i + "\") Integer num" + i + ",");
        }

//        for (int i = 1; i <= 40; i++) {
//            System.out.println("missileWithNumList.add(temp.get(" + (i - 1) + ") + \":\" + num" + i + " + \"枚\");");
//        }
    }

    @Test
    public void viewSelectByArmyAttackBaseText() {
        ArrayList<String> missileNameList = missileService.missileNameList();

        ArrayList<String> temp = new ArrayList<>();
        for (int i = 1; i <= 10; i++) {
            temp.addAll(missileNameList.subList(0, 4));
        }

        System.out.println(temp);
        System.out.println(temp.size());
    }
}