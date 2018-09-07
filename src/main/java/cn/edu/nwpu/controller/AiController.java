package cn.edu.nwpu.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AiController {

    public static final Log logger = LogFactory.getLog(ConsoleController.class);

    @RequestMapping(value = "/info", method = RequestMethod.GET)
    public String viewMachineLearning() {
        logger.info("visited machineLearning");
        return "ai/machineLearning";
    }

    @RequestMapping(value = "/showBattle2", method = RequestMethod.GET)
    public String viewBattleInfo2() {
        logger.info("visited compareMissile");
        return "ai/compareMissile";
    }

    @RequestMapping(value = "/info2", method = RequestMethod.GET)
    public String viewDeepLearning() {
        logger.info("visited deeplearn");
        return "ai/deeplearn";
    }

    @RequestMapping(value = "/model", method = RequestMethod.GET)
    public String viewModel() {
        logger.info("visited model");
        return "ai/model";
    }
}
