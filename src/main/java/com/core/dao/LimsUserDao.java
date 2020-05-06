package com.core.dao;

import com.core.po.LimsUser;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-09 23:54
 */
public interface LimsUserDao {
    /**
     * 通过id和密码查询用户信息
     *
     * @param id       用户id
     * @param password 用户密码
     * @param userType 用户类型
     * @return 用户信息
     */
    public LimsUser findLimsUser(@Param("id") String id,
                                 @Param("password") String password,
                                 @Param("userType") String userType);

    public List<LimsUser> selectLimsUserList(LimsUser limsUser);

    public Integer selectLimsUserListCount(LimsUser limsUser);

    public Integer createUser(LimsUser limsUser);

    public Integer updateUser(LimsUser limsUser);

    public LimsUser findLimsUserbyucode(Integer ucode);

    public Integer deleteUser(Integer ucode);
}
