package cn.edu.nwpu.util;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Random;

import static org.junit.Assert.*;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: xxm
 * Date: 2018-05-03
 * Time: 13:03
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class TheHpTest {

    @Autowired
    private TheHp hp;

    @Test
    public void evaluate_base() {
        System.out.println(hp.evaluate_base());
    }

    @Test
    public void getEnemyHp() {
        double result = new Random().nextDouble() / 2;
        String resultToString = result + "";
        System.out.println(resultToString.substring(0, 4));
    }

    @Test
    public void evaluate_baseEnemy() {
        for (int i = 0; i < 40; i++) {
            getEnemyHp();
        }
    }
}