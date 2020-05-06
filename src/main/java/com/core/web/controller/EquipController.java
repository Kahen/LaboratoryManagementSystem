package com.core.web.controller;

import com.common.utils.Page;
import com.core.po.Equip;
import com.core.po.EquipLog;
import com.core.po.LimsUser;
import com.core.service.EquipService;
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
 * 材料持久类
 */
@Controller
public class EquipController {
    @Autowired
    /**
     * 依赖注入
     */
    private EquipService equipService;

    @RequestMapping(value = "/equip/list.action")
    public String equiplist(@RequestParam(defaultValue = "1") Integer page,
                            @RequestParam(defaultValue = "9") Integer rows,
                            String ename, Model model) {
        Page<Equip> equip = equipService.findEquipList(page, rows, ename);
        model.addAttribute("page", equip);
        model.addAttribute("ename", ename);
        return "equip";
    }

    @RequestMapping(value = "/equipapl/list.action")
    public String equipapllist(@RequestParam(defaultValue = "1") Integer page,
                               @RequestParam(defaultValue = "9") Integer rows, String eid,
                               String ename, String estatus, Model model) {
        Page<Equip> equip = equipService.findEquipaplList(page, rows, eid, ename, estatus);
        model.addAttribute("page", equip);
        model.addAttribute("eid", eid);
        model.addAttribute("ename", ename);
        model.addAttribute("estatus", estatus);
        return "aplequip";
    }

    @RequestMapping(value = "/equip/teacherlist.action")
    public String equipteacherlist(@RequestParam(defaultValue = "1") Integer page,
                                   @RequestParam(defaultValue = "9") Integer rows,
                                   String ename, Model model) {
        Page<Equip> equip = equipService.findEquipList(page, rows, ename);
        model.addAttribute("page", equip);
        model.addAttribute("ename", ename);
        return "teacherequip";
    }

    /**
     * 创建设备
     */
    @RequestMapping("/equip/createequip.action")
    @ResponseBody
    public Map<String, Object> Createequip(Equip equip) {
        Map<String, Object> resultMap = new HashMap<String, Object>();
        if (("".equals(equip.getEname()) || "".equals(equip.getEid()))) {
            resultMap.put("result", "FAIL");
        }
        // 执行Service层中的创建方法，返回的是受影响的行数
        try {
            int rows = equipService.createequip(equip);
            if (rows > 0) {
                resultMap.put("result", "OK");
            } else {
                resultMap.put("result", "FAIL");
            }
        } catch (Exception e) {
            resultMap.put("result", "ERROR");
        }
        return resultMap;
    }

    /**
     * 申请材料
     */
    @RequestMapping("/equip/uploadequip.action")
    @ResponseBody
    public Map<String, Object> Uploadequip(Equip equip, HttpServletRequest request, HttpServletResponse response) {
        Map<String, Object> resultMap = new HashMap<String, Object>();
        Equip equip1 = findEquipbyeid(equip.getEid());
        int count = equip1.getEnumber() - equip.getEnumber();
        if (("".equals(equip.getEname()) || "".equals(equip.getEid()))) {
            resultMap.put("result", "FAIL");
        }
        // 执行Service层中的创建方法，返回的是受影响的行数
        try {
            if (count > 0) {
                HttpSession session = request.getSession();
                LimsUser limsUser = (LimsUser) session.getAttribute("USER_SESSION");
                equip.setApler(limsUser.getUsername());
                int rows = equipService.uploadequipapl(equip);
                if (rows > 0 || rows > 0) {
                    resultMap.put("result", "OK");
                } else {
                    resultMap.put("result", "FAIL");
                }
            } else {
                resultMap.put("result", "FAIL");
            }
        } catch (Exception e) {
            resultMap.put("result", "ERROR");
        }
        return resultMap;
    }

    @RequestMapping(value = "/equip/addequip.action", method = RequestMethod.GET)
    public String toAddEquip() {
        return "addequip";
    }

    /**
     * 通过id获取设备信息
     */
    @RequestMapping("/equip/findequipbyecode.action")
    @ResponseBody
    public Equip findEquipbyecode(Integer ecode) {
        Equip equip = equipService.findequipByEcode(ecode);
        return equip;
    }

    /**
     * 通过id获取设备申请信息
     */
    @RequestMapping("/equip/findequipaplbyecode.action")
    @ResponseBody
    public Equip findEquipaplbyecode(Integer ecode) {
        Equip equip = equipService.findequipaplByEcode(ecode);
        return equip;
    }

    /**
     * 更新设备
     */
    @RequestMapping("/equip/updateequip.action")
    @ResponseBody
    public String equipUpdate(Equip equip) {
        if (("".equals(equip.getEid())) || ("".equals(equip.getEname())) || (equip.getEnumber() == null)) {
            return "FAIL";
        }
        int rows = equipService.updateequip(equip);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 删除设备
     */
    @RequestMapping("/equip/deleteequip.action")
    @ResponseBody
    public String equipDelete(Integer ecode) {
        int rows = equipService.deleteEquip(ecode);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 通过设备申请
     */
    @RequestMapping("/equipapl/passequip.action")
    @ResponseBody
    public String EquipPass(Integer ecode) {
        Equip equip2 = findEquipaplbyecode(ecode);
        Equip equip1 = findEquipbyeid(equip2.getEid());
        if (!"审核中".equals(equip2.getEstatus())) {
            return "ERROR";
        } else {
            if (equip1.getEnumber() - equip2.getEnumber() > 0) {
                equip1.setEnumber((equip1.getEnumber() - equip2.getEnumber()));
                int row3 = equipService.updateequip(equip1);
                int rows1 = equipService.passEquip(ecode);
                int rows2 = createequipLog(equip2);
                if (rows1 > 0 || rows2 > 0 || row3 > 0) {
                    return "OK";
                } else {
                    return "FAIL";
                }
            } else {
                return "FAIL";
            }
        }
    }

    /**
     * 通过id找材料
     *
     * @param eid
     * @return
     */
    private Equip findEquipbyeid(String eid) {
        Equip equip = equipService.findequipaplByeid(eid);
        return equip;
    }

    /**
     * 拒绝材料申请
     */
    @RequestMapping("/equipapl/rejectequip.action")
    @ResponseBody
    public String RejectPass(Integer ecode) {
        Equip equip = findEquipaplbyecode(ecode);
        if (!"审核中".equals(equip.getEstatus())) {
            return "ERROR";
        } else {
            int rows = equipService.rejectEquip(ecode);
            if (rows > 0) {
                return "OK";
            } else {
                return "FAIL";
            }
        }
    }

    /**
     * 创建日志
     *
     * @param equip
     * @return
     */
    public int createequipLog(Equip equip) {
        // 执行Service层中的创建方法，返回的是受影响的行数
        int rows = equipService.createequiplog(equip);
        return rows;
    }
}
