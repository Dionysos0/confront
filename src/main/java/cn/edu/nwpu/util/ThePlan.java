package cn.edu.nwpu.util;

import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/**
 * Created by Dionysos on 2018/2/4.
 */
@Component
public class ThePlan {
    public Map getPlan() {
        Map<Integer, String> mission = new HashMap<Integer, String>();
        Map result = new HashMap();
        Random random = new Random();
        mission.put(1, "攻打台湾");
        mission.put(2, "攻打敌人2");
        mission.put(3, "攻打敌人3");
        mission.put(4, "攻打敌人4");
        mission.put(5, "攻打敌人5");
        mission.put(6, "攻打敌人6");
        mission.put(7, "攻打敌人7");
        mission.put(8, "攻打敌人8");
        mission.put(9, "攻打敌人9");
        mission.put(10, "攻打敌人10");
        mission.put(11, "攻打敌人11");
        mission.put(12, "攻打敌人12");
        mission.put(13, "攻打敌人13");
        mission.put(14, "攻打敌人14");
        mission.put(15, "攻打敌人15");
        mission.put(16, "攻打敌人16");
        mission.put(17, "攻打敌人17");
        mission.put(18, "攻打敌人18");
        mission.put(19, "攻打敌人19");
        mission.put(20, "攻打敌人20");
        int i = random.nextInt(21);
        if (i == 0 || i == 21) {
            i = 1;
        }
        String s = mission.get(i);
        result.put(1, i);
        result.put(2, s);
        return result;
    }

}