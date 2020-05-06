package com.core.web.controller;

import com.common.utils.Page;
import com.core.po.EquipLog;
import com.core.po.LimsUser;
import com.core.service.EquipLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-10 0:20
 * 材料日志持久类
 */
@Controller
public class EquipLogController {
    @Autowired
    /**
     * 依赖注入
     */
    private EquipLogService equiplogService;

    @RequestMapping(value = "/equiplog/list.action")
    public String loglist(@RequestParam(defaultValue = "1") Integer page,
                          @RequestParam(defaultValue = "9") Integer rows,
                          String ename, Model model) {
        Page<EquipLog> equiplog = equiplogService.findEquiplogList(page, rows, ename);
        model.addAttribute("page", equiplog);
        model.addAttribute("ename", ename);
        return "equiplog";
    }

    @RequestMapping(value = "/equip/aplresult.action")
    public String consumeteacherlist(@RequestParam(defaultValue = "1") Integer page,
                                     @RequestParam(defaultValue = "9") Integer rows,
                                     Model model, HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        LimsUser limsUser = (LimsUser) session.getAttribute("USER_SESSION");
        String apler = limsUser.getUsername();
        Page<EquipLog> equiplog = equiplogService.findEquiplogresultList(page, rows, apler);
        model.addAttribute("page", equiplog);
        model.addAttribute("apler", apler);
        return "teacheresult";
    }

    /**
     * 通过id获取材料信息
     */
    @RequestMapping("/consume/findconsumebyccode.action")
    @ResponseBody
    public EquipLog findConsumebyecode(Integer ecode) {
        EquipLog equipLog = equiplogService.findEquiplogByecode(ecode);
        return equipLog;
    }

    /**
     * 删除材料记录
     */
    @RequestMapping("/equipLog/deleteequiplog.action")
    @ResponseBody
    public String equiplogDelete(Integer ecode) {
        int rows = equiplogService.deleteEquiplog(ecode);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }
}
