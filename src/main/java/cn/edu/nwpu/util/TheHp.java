package cn.edu.nwpu.util;

import cn.edu.nwpu.service.Hp;
import org.springframework.stereotype.Component;

import java.util.Random;

/**
 * Created by Dionysos on 2018/2/1.
 */
@Component
public class TheHp implements Hp {
    //我方基地血量
    public float evaluate_base() {
        Double hp;
        Random random = new Random();
//        for (int i = 0; i < 10; i++) {
        hp = 2.5 * (1 + (random.nextInt(1) / 5.0));
//        }
//        for (int i = 0; i < 10; i++) {
        hp = hp - 1 + Math.random() / 5;
        if (hp < 0) {
            hp = Double.valueOf(0);
//            }
        }
        float v = hp.floatValue();
        return v;
    }

    //敌方基地血量
    public float evaluate_baseEnemy() {
        Double hp;
        Random random = new Random();
//        for (int i = 0; i < 10; i++) {
        hp = 2.5 * (1 + (random.nextInt(1) / 5.0));
//        }
//        for (int i = 0; i < 10; i++) {
        hp = hp - 2.6 + Math.random() / 5;
        if (hp < 0) {
            hp = Double.valueOf(0);
//            }
        }
        float v = hp.floatValue();
        return v;
    }

}

