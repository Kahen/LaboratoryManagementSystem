package com.core.web.controller;

import com.common.utils.Page;
import com.core.po.LimsUser;
import com.core.service.LimsUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-10 0:20
 * 用户持久类
 */
@Controller
public class LimsUserController {
    /**
     * 依赖注入
     */
    @Autowired
    private LimsUserService limsUserService;

    @RequestMapping(value = "/login.action", method = RequestMethod.POST)
    public String login(String id, String password, String userType, Model model,
                        HttpSession session) {
        String admin = "管理员";
        // 通过账号和密码身份查询用户
        LimsUser limsUser = limsUserService.findLimsUser(id, password, userType);
        if (limsUser != null) {
            // 将用户对象添加到Session
            session.setAttribute("USER_SESSION", limsUser);
            // 跳转到主页面
            if (admin.equals(userType)) {
                // return "admin";
                return "redirect:admin/list.action";
            } else {//学生与教师权限一致
                return "redirect:teacher/list.action";
            }
        }
        model.addAttribute("msg", "账号或密码身份错误，请重新输入！");
        // 返回到登录页面
        return "login";
    }

    /**
     * 模拟其他类中跳转到用户管理页面的方法
     */

    @RequestMapping(value = "/toAdmin.action")
    public String toAdmin() {
        return "admin";
    }

    @RequestMapping(value = "/logout.action")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:login.action";
    }

    @RequestMapping(value = "/admin/adduser.action")
    public String toAddUser() {
        return "adduser";
    }

    /**
     * 向用户登录页面的跳转方法
     *
     * @return login
     */
    @RequestMapping(value = "/logout.action", method = RequestMethod.GET)
    public String toLogin() {
        return "login";
    }

    /**
     * 查询用户
     *
     * @param page     页码
     * @param rows     行数
     * @param id       用户id
     * @param username 用户名
     * @param usertype 用户类型
     * @param model
     * @return
     */
    @RequestMapping(value = "/admin/list.action")
    public String list(@RequestParam(defaultValue = "1") Integer page,
                       @RequestParam(defaultValue = "9") Integer rows,
                       String id, String username, String usertype, Model model) {
        Page<LimsUser> limsUsers = limsUserService.findLimsUserList(page, rows, id, username, usertype);
        model.addAttribute("page", limsUsers);
        model.addAttribute("id", id);
        model.addAttribute("username", username);
        model.addAttribute("userType", usertype);
        return "admin";
    }

    /**
     * 创建用户
     */
    @RequestMapping("/admin/createuser.action")
    @ResponseBody
    public Map<String, Object> Createuser(LimsUser limsUser) {
        Map<String, Object> resultMap = new HashMap<String, Object>();
        if ((limsUser.getId() == "") || (limsUser.getPassword() == "") || (limsUser.getAddress() == "") || (limsUser.getTel() == "")
                || (limsUser.getUsername()) == "" || (limsUser.getSex() == "")) {
            resultMap.put("result", "FAIL");
        } else {
            try {
                int rows = limsUserService.createUser(limsUser);
                if (rows > 0) {
                    resultMap.put("result", "OK");
                } else {
                    resultMap.put("result", "FAIL");
                }
            } catch (Exception e) {
                resultMap.put("result", "ERROR");
            }
        }
        return resultMap;
    }

    /**
     * 通过id获取用户信息
     */
    @RequestMapping("/admin/findlimsuserbyucode.action")
    @ResponseBody
    public LimsUser findlimsuserbyucode(Integer ucode) {
        LimsUser limsUser = limsUserService.findLimsUserByUcode(ucode);
        return limsUser;
    }

    /**
     * 更新用户
     */
    @RequestMapping("/admin/updateuser.action")
    @ResponseBody
    public String userUpdate(LimsUser limsUser) {
        if ((limsUser.getId() == "") || (limsUser.getPassword() == "") || (limsUser.getAddress() == "") || (limsUser.getTel() == "")
                || (limsUser.getUsername()) == "" || (limsUser.getSex() == "")) {
            return "FAIL";
        }
        int rows = limsUserService.updatelimsUser(limsUser);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }

    /**
     * 删除用户
     */
    @RequestMapping("/admin/deleteuser.action")
    @ResponseBody
    public String limsUserDelete(Integer ucode) {
        int rows = limsUserService.deletelimsUser(ucode);
        if (rows > 0) {
            return "OK";
        } else {
            return "FAIL";
        }
    }
}
