package cn.edu.nwpu.controller;

import cn.edu.nwpu.pojo.Missile;
import cn.edu.nwpu.service.MissileService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class MissileController {

    public static final Log logger = LogFactory.getLog(MissileController.class);

    @Autowired
    private MissileService missileService;

    /**
     * 全查导弹信息
     */
    @RequestMapping(value = "/missile", method = RequestMethod.GET)
    public String findAllMissiles(Model model) {
        model.addAttribute("missiles", missileService.selectAll());
        return "bigdata/missileTable";
    }

    /**
     * 修改导弹信息准备
     */
    @RequestMapping(value = "/missile/update/{id}", method = RequestMethod.GET)
    public String beforeUpdateMissile(@PathVariable Integer id, Model model) {
        model.addAttribute("missile", missileService.selectByPrimaryKey(id));
        return "bigdata/edit";
    }

    /**
     * 修改导弹信息
     */
    @RequestMapping(value = "/missile/update.do/{id}", method = RequestMethod.POST)
    public String updateMissile(@ModelAttribute Missile missile, @PathVariable Integer id) {
        missile.setId(id);
        boolean b = missileService.updateByPrimaryKeySelective(missile);
        logger.info(b);
        if (b) {
            return "redirect:/missile";
        }
        return "";
    }

    /**
     * 新增导弹信息准备
     */
    @RequestMapping(value = "/newMissile", method = RequestMethod.GET)
    public String saveMissileBefore(Model model) {
        Missile missile = new Missile();
        model.addAttribute("missile", missile);
        return "bigdata/new";
    }

    /**
     * 新增导弹信息
     */
    @RequestMapping(value = "/newMissile.do", method = RequestMethod.POST)
    public String saveMissile(@ModelAttribute Missile missile) {
        boolean b = missileService.insertSelective(missile);
        logger.info(b);
        if (b) {
            return "redirect:/missile";
        }
        return "";
    }

}
