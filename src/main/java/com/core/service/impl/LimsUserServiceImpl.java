package com.core.service.impl;

import com.common.utils.Page;
import com.core.dao.LimsUserDao;
import com.core.po.LimsUser;
import com.core.service.LimsUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-10 0:08
 * 用户Service 接口实现类
 */
@Service("LimsUserService")
public class LimsUserServiceImpl implements LimsUserService {
    @Autowired
    private LimsUserDao limsUserDao;

    /**
     * 通过账号密码查询用户
     */
    @Override
    public LimsUser findLimsUser(String id, String password, String userType) {

        LimsUser limsUser = this.limsUserDao.findLimsUser(id, password, userType);
        return limsUser;
    }

    /**
     * 根据用户名和id查询用户列表
     *
     * @param page
     * @param rows
     * @param id
     * @param username
     * @param userType
     * @return
     */
    @Override
    public Page<LimsUser> findLimsUserList(Integer page, Integer rows, String id, String username, String usertype) {
        LimsUser limsUser = new LimsUser();
        if (StringUtils.isNotBlank(id)) {
            limsUser.setId(id);
        }
        if (StringUtils.isNotBlank(username)) {
            limsUser.setUsername(username);
        }
        if (StringUtils.isNotBlank(usertype)) {
            limsUser.setUsertype(usertype);
        }
        limsUser.setStart((page - 1) * rows);
        limsUser.setRows(rows);
        List<LimsUser> limsUsers = limsUserDao.selectLimsUserList(limsUser);
        Integer count = limsUserDao.selectLimsUserListCount(limsUser);
        Page<LimsUser> result = new Page<>();
        result.setPage(page);
        result.setRows(limsUsers);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    /**
     * @param limsUser 用户
     * @return
     */
    @Override
    public int createUser(LimsUser limsUser) {
        return limsUserDao.createUser(limsUser);
    }

    /**
     * @param ucode 用户编号
     * @return
     */
    @Override
    public LimsUser findLimsUserByUcode(Integer ucode) {
        LimsUser limsUser = limsUserDao.findLimsUserbyucode(ucode);
        return limsUser;
    }

    /**
     * @param limsUser
     * @return
     */
    @Override
    public int updatelimsUser(LimsUser limsUser) {
        return limsUserDao.updateUser(limsUser);
    }

    /**
     * @param ucode 用户编号
     * @return
     */
    @Override
    public Integer deletelimsUser(Integer ucode) {

        return limsUserDao.deleteUser(ucode);
    }
}
