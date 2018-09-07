package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.BattlefieldSituationEnemy;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: xxm
 * Date: 2018-04-18
 * Time: 23:09
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class BattlefieldSituationEnemyMapperTest {

    @Autowired
    private BattlefieldSituationEnemyMapper battlefieldSituationEnemyMapper;

    @Test
    public void selectSituationsWithOutNameById() {
        List<BattlefieldSituationEnemy> battlefieldSituationEnemies = battlefieldSituationEnemyMapper.selectSituationsWithOutNameById(1);
        for (BattlefieldSituationEnemy battlefieldSituationEnemy : battlefieldSituationEnemies) {
            System.out.println(battlefieldSituationEnemy.getId());
            System.out.println(battlefieldSituationEnemy.getLastHp());
            System.out.println(battlefieldSituationEnemy.getPoint());
        }
    }
}