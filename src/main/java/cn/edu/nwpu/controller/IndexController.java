package cn.edu.nwpu.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

    public static final Log logger = LogFactory.getLog(IndexController.class);

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String getIndex() {
        logger.info("visited index");
        return "bigdata/index";
    }

}
