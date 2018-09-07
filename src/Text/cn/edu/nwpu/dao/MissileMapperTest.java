package cn.edu.nwpu.dao;

import cn.edu.nwpu.pojo.Missile;
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
 * Time: 19:24
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class MissileMapperTest {

    @Autowired
    private MissileMapper missileMapper;

    @Test
    public void selectMissileIdAndName() {
        List<Missile> missiles = missileMapper.selectMissileIdAndName();
        System.out.println(missiles.get(1).toString());
//        for (Missile missile : missiles) {
//            System.out.println(missile.toString());
//        }
    }
}