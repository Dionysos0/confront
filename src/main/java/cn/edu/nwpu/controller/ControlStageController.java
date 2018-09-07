package cn.edu.nwpu.controller;

import cn.edu.nwpu.pojo.*;
import cn.edu.nwpu.service.*;
import cn.edu.nwpu.util.TheHp;
import cn.edu.nwpu.util.ThePlan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Dionysos on 2018/1/22.
 */
@Controller
public class ControlStageController {

    @Autowired
    ControlStage controlStage;

    @Autowired
    PlanMissileArmyService planMissileArmyService;

    @Autowired
    ThePlan thePlan;

    @Autowired
    TheHp theHp;

    @Autowired
    BattlefieldSituationArmyService battlefieldSituationArmyService;

    @Autowired
    BattlefieldSituationEnemyService battlefieldSituationEnemyService;

    @Autowired
    MissileService missileService;

    @Autowired
    Point point;

    /**
     * 随机选择命令（地图）
     */
    @RequestMapping(value = "/question", method = RequestMethod.GET)
    public ModelAndView viewQuestion(ModelAndView modelAndView) {
        Map plan = thePlan.getPlan();
        modelAndView.addObject("id", plan.get(1));
        modelAndView.addObject("value", plan.get(2));
        modelAndView.addObject("QuestionInfo", thePlan.getPlan());
        modelAndView.setViewName("decision/question");
        return modelAndView;
    }

    /**
     * @Descripion 打击结果综合展示
     * @BaseHp
     * @LiveBase
     */
    @RequestMapping(value = "/showBattle/{id}", method = RequestMethod.GET)
    public ModelAndView viewResult(@PathVariable Integer id, ModelAndView modelAndView) {
        modelAndView.addObject("id", id);

        List<BattlefieldSituationArmy> aa = battlefieldSituationArmyService.selectSituationsById(id);
        List<ArmyPointDivided> result = new ArrayList<>();
        for (BattlefieldSituationArmy a : aa) {
            ArmyPointDivided armyPointDivided = new ArmyPointDivided();
            float v = theHp.evaluate_base();
            armyPointDivided.setL(point.getArmyL(a).substring(0, 8));
            armyPointDivided.setB(point.getArmyB(a).substring(0, 7));
            String s = a.getBaseNmae().substring(5);
            String baseName = s + "号基地";
            armyPointDivided.setBase_name(baseName);
            armyPointDivided.setId(a.getId());
            armyPointDivided.setHp(v);
            result.add(armyPointDivided);
        }
        modelAndView.addObject("ArmyInfos", result);

        List<BattlefieldSituationEnemy> ab = battlefieldSituationEnemyService.selectByBaseId(id);
        List<EnemyPointDivided> resultE = new ArrayList<>();
        for (BattlefieldSituationEnemy a : ab) {
            EnemyPointDivided enemyPointDivided = new EnemyPointDivided();
            float v = theHp.evaluate_baseEnemy();
            enemyPointDivided.setL(point.getEnemyL(a).substring(0, 8));
            enemyPointDivided.setB(point.getEnemyB(a).substring(0, 7));
            String e = a.getBaseName().substring(5);
            String baseName = e + "号基地";
            enemyPointDivided.setBase_name(baseName);
            enemyPointDivided.setId(a.getId());
            enemyPointDivided.setHp(v);
            resultE.add(enemyPointDivided);
        }
        modelAndView.addObject("EnemyInfos", resultE);
        modelAndView.setViewName("decision/showBattleInfo");
        return modelAndView;
    }

    /**
     * 方案选择
     *
     * @Page: 交互系统
     */
    @RequestMapping(value = "/question/{id}", method = RequestMethod.GET)
    public ModelAndView viewConsole(@PathVariable Integer id, ModelAndView modelAndView) {
        ArrayList<String> missileNameList = missileService.missileNameList();
        List<String> baseNameList = battlefieldSituationArmyService.findBaseNameById(id);
        modelAndView.addObject("MissileNames", missileNameList);
        modelAndView.addObject("BaseNameList", baseNameList);
        modelAndView.addObject("id", id);
        modelAndView.setViewName("decision/console");
        return modelAndView;
    }

    /**
     * 攻击目标选择
     *
     * @Page: 对抗军演决策
     */
    @RequestMapping(value = "/console/{id}", method = RequestMethod.GET)
    public ModelAndView ViewSelectByArmyAttackBase(
            @PathVariable Integer id,
            @RequestParam(defaultValue = "2", value = "num1") Integer num1,
            @RequestParam(defaultValue = "2", value = "num2") Integer num2,
            @RequestParam(defaultValue = "2", value = "num3") Integer num3,
            @RequestParam(defaultValue = "2", value = "num4") Integer num4,
            @RequestParam(defaultValue = "2", value = "num5") Integer num5,
            @RequestParam(defaultValue = "2", value = "num6") Integer num6,
            @RequestParam(defaultValue = "2", value = "num7") Integer num7,
            @RequestParam(defaultValue = "2", value = "num8") Integer num8,
            @RequestParam(defaultValue = "2", value = "num9") Integer num9,
            @RequestParam(defaultValue = "2", value = "num10") Integer num10,
            @RequestParam(defaultValue = "2", value = "num11") Integer num11,
            @RequestParam(defaultValue = "2", value = "num12") Integer num12,
            @RequestParam(defaultValue = "2", value = "num13") Integer num13,
            @RequestParam(defaultValue = "2", value = "num14") Integer num14,
            @RequestParam(defaultValue = "2", value = "num15") Integer num15,
            @RequestParam(defaultValue = "2", value = "num16") Integer num16,
            @RequestParam(defaultValue = "2", value = "num17") Integer num17,
            @RequestParam(defaultValue = "2", value = "num18") Integer num18,
            @RequestParam(defaultValue = "2", value = "num19") Integer num19,
            @RequestParam(defaultValue = "2", value = "num20") Integer num20,
            @RequestParam(defaultValue = "2", value = "num21") Integer num21,
            @RequestParam(defaultValue = "2", value = "num22") Integer num22,
            @RequestParam(defaultValue = "2", value = "num23") Integer num23,
            @RequestParam(defaultValue = "2", value = "num24") Integer num24,
            @RequestParam(defaultValue = "2", value = "num25") Integer num25,
            @RequestParam(defaultValue = "2", value = "num26") Integer num26,
            @RequestParam(defaultValue = "2", value = "num27") Integer num27,
            @RequestParam(defaultValue = "2", value = "num28") Integer num28,
            @RequestParam(defaultValue = "2", value = "num29") Integer num29,
            @RequestParam(defaultValue = "2", value = "num30") Integer num30,
            @RequestParam(defaultValue = "2", value = "num31") Integer num31,
            @RequestParam(defaultValue = "2", value = "num32") Integer num32,
            @RequestParam(defaultValue = "2", value = "num33") Integer num33,
            @RequestParam(defaultValue = "2", value = "num34") Integer num34,
            @RequestParam(defaultValue = "2", value = "num35") Integer num35,
            @RequestParam(defaultValue = "2", value = "num36") Integer num36,
            @RequestParam(defaultValue = "2", value = "num37") Integer num37,
            @RequestParam(defaultValue = "2", value = "num38") Integer num38,
            @RequestParam(defaultValue = "2", value = "num39") Integer num39,
            @RequestParam(defaultValue = "2", value = "num40") Integer num40,
            ModelAndView modelAndView) {
        // 1. 根据 Id 获得敌我基地坐标
        // 我方
        modelAndView.addObject("baseArmyPoints", battlefieldSituationArmyService.findBasePointSeparateById(id));
        // 敌方
        modelAndView.addObject("baseEnemyPoints", battlefieldSituationEnemyService.findBasePointSeparateById(id));
        // 敌方完整坐标
        modelAndView.addObject("armyPoints", battlefieldSituationArmyService.findBasePointById(id));
        // 我方完整坐标
        modelAndView.addObject("enemyPoints", battlefieldSituationEnemyService.findBasePointById(id));

        // 2` 预处理: 拆分集合，得到单个导弹 并为之添加相应数量
        ArrayList<String> missileNameList = missileService.missileNameList();

        ArrayList<String> temp = new ArrayList<>();
        for (int i = 1; i <= 10; i++) {
            temp.addAll(missileNameList.subList(0, 4));
        }

        ArrayList<String> missileWithNumList = new ArrayList<>();

        // 红方(前四枚)
        missileWithNumList.add(temp.get(0) + ":" + num1 + "枚");
        missileWithNumList.add(temp.get(1) + ":" + num2 + "枚");
        missileWithNumList.add(temp.get(2) + ":" + num3 + "枚");
        missileWithNumList.add(temp.get(3) + ":" + num4 + "枚");
        missileWithNumList.add(temp.get(4) + ":" + num5 + "枚");
        missileWithNumList.add(temp.get(5) + ":" + num6 + "枚");
        missileWithNumList.add(temp.get(6) + ":" + num7 + "枚");
        missileWithNumList.add(temp.get(7) + ":" + num8 + "枚");
        missileWithNumList.add(temp.get(8) + ":" + num9 + "枚");
        missileWithNumList.add(temp.get(9) + ":" + num10 + "枚");
        missileWithNumList.add(temp.get(10) + ":" + num11 + "枚");
        missileWithNumList.add(temp.get(11) + ":" + num12 + "枚");
        missileWithNumList.add(temp.get(12) + ":" + num13 + "枚");
        missileWithNumList.add(temp.get(13) + ":" + num14 + "枚");
        missileWithNumList.add(temp.get(14) + ":" + num15 + "枚");
        missileWithNumList.add(temp.get(15) + ":" + num16 + "枚");
        missileWithNumList.add(temp.get(16) + ":" + num17 + "枚");
        missileWithNumList.add(temp.get(17) + ":" + num18 + "枚");
        missileWithNumList.add(temp.get(18) + ":" + num19 + "枚");
        missileWithNumList.add(temp.get(19) + ":" + num20 + "枚");
        missileWithNumList.add(temp.get(20) + ":" + num21 + "枚");
        missileWithNumList.add(temp.get(21) + ":" + num22 + "枚");
        missileWithNumList.add(temp.get(22) + ":" + num23 + "枚");
        missileWithNumList.add(temp.get(23) + ":" + num24 + "枚");
        missileWithNumList.add(temp.get(24) + ":" + num25 + "枚");
        missileWithNumList.add(temp.get(25) + ":" + num26 + "枚");
        missileWithNumList.add(temp.get(26) + ":" + num27 + "枚");
        missileWithNumList.add(temp.get(27) + ":" + num28 + "枚");
        missileWithNumList.add(temp.get(28) + ":" + num29 + "枚");
        missileWithNumList.add(temp.get(29) + ":" + num30 + "枚");
        missileWithNumList.add(temp.get(30) + ":" + num31 + "枚");
        missileWithNumList.add(temp.get(31) + ":" + num32 + "枚");
        missileWithNumList.add(temp.get(32) + ":" + num33 + "枚");
        missileWithNumList.add(temp.get(33) + ":" + num34 + "枚");
        missileWithNumList.add(temp.get(34) + ":" + num35 + "枚");
        missileWithNumList.add(temp.get(35) + ":" + num36 + "枚");
        missileWithNumList.add(temp.get(36) + ":" + num37 + "枚");
        missileWithNumList.add(temp.get(37) + ":" + num38 + "枚");
        missileWithNumList.add(temp.get(38) + ":" + num39 + "枚");
        missileWithNumList.add(temp.get(39) + ":" + num40 + "枚");

        // 蓝方导弹不添加数量信息
        missileWithNumList.addAll(missileNameList.subList(4, missileNameList.size()));
        // 2. 设置每个基地（坐标）对应导弹
        modelAndView.addObject("missileNameList", missileWithNumList);

        // 3. 继续传递 Id
        modelAndView.addObject("id", id);
        // 4. 设置视图
        modelAndView.setViewName("decision/situations");
        return modelAndView;
    }
}
