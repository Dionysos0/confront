package cn.edu.nwpu.controller;

import cn.edu.nwpu.service.*;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ConsoleController {

    public static final Log logger = LogFactory.getLog(ConsoleController.class);

    @Autowired
    private BattlefieldSituationArmyService battlefieldSituationArmyService;

    @Autowired
    private BattlefieldSituationEnemyService battlefieldSituationEnemyService;

    @Autowired
    private PlanMissileArmyService planMissileArmyService;

    @Autowired
    private PlanMissileEnemyService planMissileEnemyService;

    @Autowired
    private Hp hp;

    /**
     * 战场态势
     */
    @RequestMapping(value = "/situations", method = RequestMethod.GET)
    public String viewSituation() {
        return "decision/situations";
    }

    /**
     * 打击展示
     */
    @RequestMapping(value = "/attack/{id}", method = RequestMethod.GET)
    public String showAttack(@PathVariable Integer id, Model model) {
        // 敌我双方打击目标
        model.addAttribute("ArmyAttacks", planMissileArmyService.selectById(id));
        model.addAttribute("EnemyAttacks", planMissileEnemyService.selectById(id));

        // 敌我双方坐标
        model.addAttribute("ArmyInfos", battlefieldSituationArmyService.selectSituationsById(id));
        model.addAttribute("EnemyInfos", battlefieldSituationEnemyService.selectByBaseId(id));
        model.addAttribute("id", id);
        return "decision/attack";
    }

}







