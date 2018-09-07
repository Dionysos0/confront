package cn.edu.nwpu.controller;

import cn.edu.nwpu.dao.AirCraftMapper;
import cn.edu.nwpu.service.BigDataService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Description: show BigData
 * Created By xxm
 */
@Controller
public class BigDataController {

    public static final Log logger = LogFactory.getLog(BigDataController.class);

    @Autowired
    private BigDataService bigDataService;

    /**
     * show airplane infos
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/aircraft", method = RequestMethod.GET)
    public String findAllAircraft(Model model) {
        model.addAttribute("aircrafts", bigDataService.selectAllAirCraft());
        return "bigdata/aircraft";
    }

    /**
     * show submarine infos
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/submarine", method = RequestMethod.GET)
    public String viewOnePlus(Model model) {
        model.addAttribute("submarines", bigDataService.selectAllSubMarine());
        return "bigdata/submarine";
    }

    @RequestMapping(value = "/el", method = RequestMethod.GET)
    public String viewEL() {
        return "bigdata/elPic";
    }


}
