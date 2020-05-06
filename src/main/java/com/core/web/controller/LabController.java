package com.core.web.controller;

import com.common.utils.Page;
import com.core.po.Lab;
import com.core.po.LimsUser;
import com.core.service.LabService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-10 0:20
 * 实验室持久类
 */
@Controller
public class LabController {
    @Autowired
    /**
     * 依赖注入
     */
    private LabService labService;

    /**
     * 模拟其他类中跳转到实验室管理页面的方法
     */

    @RequestMapping(value = "/toLab.action")
    public String tolab() {
        return "lab";
    }

    @RequestMapping(value = "/lab/list.action")
    public String lablist(@RequestParam(defaultValue = "1") Integer page,
                          @RequestParam(defaultValue = "9") Integer rows,
                          String labid, Model model) {
        Page<Lab> lab = labService.findLabList(page, rows, labid);
        model.addAttribute("page", lab);
        model.addAttribute("labid", labid);
        return "lab";
    }

    @RequestMapping(value = "/lab/addlab.action", method = RequestMethod.GET)
    public String toAddLab() {
        return "addlab";
    }

    @RequestMapping(value = "/apllab/list.action")
    public String apllablist(@RequestParam(defaultValue = "1") Integer page,
                             @RequestParam(defaultValue = "9") Integer rows,
                             String labid, Model model) {
        Page<Lab> lab = labService.findapllabList(page, rows, labid);
        model.addAttribute("page", lab);
        model.addAttribute("labid", labid);
        return "apllab";
    }

    @RequestMapping(value = "/teacher/list.action")
    public String teacherlist(@RequestParam(defaultValue = "1") Integer page,
                              @RequestParam(defaultValue = "9") Integer rows,
                              String labid, Model model) {
        Page<Lab> lab = labService.findapllabList(page, rows, labid);
        model.addAttribute("page", lab);
        model.addAttribute("labid", labid);
        return "teacher";
    }

    /**
     * 创建实验室
     */
    @RequestMapping("/lab/createlab.action")
    @ResponseBody
    public Map<String, Object> CreateLab(Lab lab) {
        Map<String, Object> resultMap = new HashMap<String, Object>();
        if ((lab.getLabid() == "" || (lab.getLabstatus() == "") || (lab.getAddress() == ""))) {
            resultMap.put("result", "FAIL");
        }
        // 执行Service层中的创建方法，返回的是受影响的行数
        try {
            int rows = labService.createLab(lab);

            if (rows > 0) {
                resultMap.put("result", "OK");
            } else {
                resultMap.put("result", "FAIL");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resultMap.put("result", "ERROR");
        }
        return resultMap;

    }

    /**
     * 通过lcode获取实验室信息
     */
    @RequestMapping("/lab/findlabbylcode.action")
    @ResponseBody
    public Lab findlabbylcode(Integer lcode) {
        Lab lab = labService.findLabBylcode(lcode);
        return lab;
    }

    /**
     * 更新实验室
     */
    @RequestMapping("/lab/updatelab.action")
    @ResponseBody
    public String labUpdate(Lab lab) {
        if ((lab.getLcode() == null) || (lab.getLabid() == "") || (lab.getAddress() == "")) {
            return "FAIL";
        }
        int rows = labService.updateLab(lab);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 删除实验室
     */
    @RequestMapping("/lab/deletelab.action")
    @ResponseBody
    public String LabDelete(Integer lcode) {
        int rows = labService.deleteLab(lcode);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 通过实验室申请
     */
    @RequestMapping("/lab/passlab.action")
    @ResponseBody
    public String LabPass(Integer lcode) {
        Lab lab = findlabbylcode(lcode);
        if (!lab.getLabstatus().equals("审核中")) {
            return "ERROR";
        } else {
            int rows = labService.passLab(lcode);
            if (rows > 0) {
                return "OK";
            } else {
                return "FAIL";
            }
        }
    }

    /**
     * 拒绝实验室申请
     */
    @RequestMapping("/lab/rejectlab.action")
    @ResponseBody
    public String RejectPass(Integer lcode) {
        Lab lab = findlabbylcode(lcode);
        if (!lab.getLabstatus().equals("审核中")) {
            return "ERROR";
        } else {
            int rows = labService.rejectLab(lcode);
            if (rows > 0) {
                return "OK";
            } else {
                return "FAIL";
            }
        }
    }

    /**
     * 申请实验室
     */
    @RequestMapping(value = "/lab/apllab.action")
    @ResponseBody
    public String LabApl(Integer lcode, HttpServletRequest request, HttpServletResponse response) {
        Lab lab = findlabbylcode(lcode);
        if (!"空闲中".equals(lab.getLabstatus())) {
            return "ERROR";
        } else {
            HttpSession session = request.getSession();
            LimsUser limsUser = (LimsUser) session.getAttribute("USER_SESSION");
            int rows = labService.aplLab(lcode, limsUser.getUsername());
            if (rows > 0) {
                return "OK";
            } else {
                return "FAIL";
            }
        }
    }

    /**
     * 退回实验室申请
     */
    @RequestMapping(value = "/lab/returnlab.action")
    @ResponseBody
    public String LabReturn(Integer lcode, HttpServletRequest request, HttpServletResponse response) {
        Lab lab = findlabbylcode(lcode);
        HttpSession session = request.getSession();
        LimsUser limsUser = (LimsUser) session.getAttribute("USER_SESSION");
        if (!limsUser.getUsername().equals(lab.getApler())) {
            return "inconsistent";
        }
        if ("空闲中".equals(lab.getLabstatus())) {
            return "ERROR";
        } else {
            int rows = labService.returnLab(lcode);
            if (rows > 0) {
                return "OK";
            } else {
                return "FAIL";
            }
        }
    }
}
