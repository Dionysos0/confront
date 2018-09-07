package cn.edu.nwpu.dao;

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
 * Time: 21:34
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class BattlefieldSituationArmyMapperTest {

    @Autowired
    private BattlefieldSituationArmyMapper battlefieldSituationArmyMapper;

    @Test
    public void selectPointById() {
        List<String> strings = battlefieldSituationArmyMapper.selectPointById(1);
        for (String string : strings) {
            System.out.println(string);
        }
    }
}