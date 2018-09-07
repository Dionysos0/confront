package cn.edu.nwpu.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: xxm
 * Date: 2018-04-20
 * Time: 13:47
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class BattlefieldSituationEnemyServiceImplTest {

    @Autowired
    private BattlefieldSituationEnemyServiceImpl battlefieldSituationEnemyService;

    @Test
    public void getPoints() {

    }

    @Test
    public void findBasePointSeparateById() {
        List<ArrayList> separatePoints = battlefieldSituationEnemyService.findBasePointSeparateById(1);
        for (ArrayList separatePoint : separatePoints) {
            System.out.println(separatePoint);
        }
    }

    @Test
    public void findBasePointById() {

    }
}