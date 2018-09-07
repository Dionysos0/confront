package cn.edu.nwpu.controller;

import cn.edu.nwpu.pojo.RuleAttack;
import cn.edu.nwpu.pojo.RuleDefender;
import cn.edu.nwpu.service.RuleAttackService;
import cn.edu.nwpu.service.RuleDefenderService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class RuleController {

    public static final Log logger = LogFactory.getLog(RuleController.class);

    @Autowired
    private RuleAttackService ruleAttackService;

    @Autowired
    private RuleDefenderService ruleDefenderService;

    /**
     * 规则展示页面
     */
    @RequestMapping(value = "/rule", method = RequestMethod.GET)
    public String findRuleById(Model model) {
        model.addAttribute("attackRules", ruleAttackService.selectAllAttackRule());
        model.addAttribute("defenderRules", ruleDefenderService.selectAllDefenderRule());
        return "ai/rule";
    }

    /**
     * 新增打击规则准备
     */
    @RequestMapping(value = "/ruleAttackNew", method = RequestMethod.GET)
    public String saveRuleAttack(Model model) {
        RuleAttack ruleAttack = new RuleAttack();
        model.addAttribute("ruleAttack", ruleAttack);
        return "ai/newAttackRule";
    }

    /**
     * 新增打击规则
     */
    @RequestMapping(value = "/ruleAttack/new.do", method = RequestMethod.POST)
    public String doSaveRuleAttack(@ModelAttribute RuleAttack ruleAttack) {

        logger.info(ruleAttackService.insertSelective(ruleAttack));

        boolean b = ruleAttackService.insertSelective(ruleAttack);

        logger.info(b);

        if (b) {
            return "redirect:/rule";
        }
        return "";
    }

    /**
     * 新增防御规则准备
     */
    @RequestMapping(value = "/ruleDefenderNew", method = RequestMethod.GET)
    public String saveRuleDefender(Model model) {
        RuleDefender ruleDefender = new RuleDefender();
        model.addAttribute("ruleDefender", ruleDefender);
        return "ai/newDefenderRule";
    }

    /**
     * 新增防御规则
     */
    @RequestMapping(value = "/ruleDefender/new.do", method = RequestMethod.POST)
    public String doSaveRuleDefender(@ModelAttribute RuleDefender ruleDefender) {
        boolean b = ruleDefenderService.insertSelective(ruleDefender);
        if (b) {
            return "redirect:/rule";
        }
        return "";
    }

}
