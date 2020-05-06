package com.core.po;

import java.io.Serializable;

/**
 * @author Kahen
 * @company 计科三班
 * @create 2019-09-09 23:35
 * 用户持久化类
 */
public class LimsUser implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 用户编号
     */
    private Integer ucode;

    public Integer getUcode() {
        return ucode;
    }

    public void setUcode(Integer ucode) {
        this.ucode = ucode;
    }

    /**
     * 用户id
     */
    private String id;
    /**
     * 用户名
     */
    private String username;
    /**
     * 密码
     */
    private String password;
    /**
     * 电话
     */
    private String tel;
    /**
     * 地址
     */
    private String address;
    /**
     * 用户类型
     */
    private String usertype;
    /**
     * 性别
     */
    private String sex;
    /**
     * 起始行
     */
    private Integer start;
    /**
     * 所取行数
     */
    private Integer rows;

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }
}
