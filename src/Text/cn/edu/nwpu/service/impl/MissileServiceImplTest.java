package cn.edu.nwpu.service.impl;

import org.junit.After;
import org.junit.Before;
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
 * Date: 2018-04-30
 * Time: 14:20
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class MissileServiceImplTest {

    @Autowired
    private MissileServiceImpl missileService;

    @Test
    public void missileNameList() {
        ArrayList<String> missileNameList = missileService.missileNameList();
        ArrayList<String> missileWithNumList = new ArrayList<>();
        for (String missile : missileNameList) {
            missileWithNumList.add(missile + ": 5枚");
        }
        System.out.println(missileWithNumList);
    }
}