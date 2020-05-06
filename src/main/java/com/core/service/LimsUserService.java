package com.core.service;

import com.common.utils.Page;
import com.core.po.LimsUser;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-10 0:04
 * 用户Service层接口
 */
public interface LimsUserService {
    /**
     * 通过账号和密码查询用户
     *
     * @param id       用户id
     * @param password 用户密码
     * @param userType 用户类型
     * @return 用户信息
     */
    public LimsUser findLimsUser(String id, String password, String userType);

    /**
     * 通过id用户名获取用户列表
     *
     * @param page     页码
     * @param rows     行数
     * @param id       用户id
     * @param username 用户名
     * @return 用户列表
     */
    public Page<LimsUser> findLimsUserList(Integer page, Integer rows, String id, String username, String usertype);

    /**
     * 创建用户
     *
     * @param limsUser 用户
     * @return
     */
    public int createUser(LimsUser limsUser);

    /**
     * 根据用户编号查询用户
     *
     * @param ucode
     * @return
     */
    public LimsUser findLimsUserByUcode(Integer ucode);

    /**
     * 更新用户信息
     *
     * @param limsUser
     * @return 更新结果
     */
    public int updatelimsUser(LimsUser limsUser);

    /**
     * 删除用户
     *
     * @param ucode 用户编号
     * @return 更新结果
     */
    public Integer deletelimsUser(Integer ucode);
}
