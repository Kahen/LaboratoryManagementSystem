package com.core.po;

import java.sql.Date;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-26 19:31
 */
public class Lab {
    /**
     * 实验室id
     */
    private String labid;
    /**
     * 实验室名
     */
    private String labname;
    private String labInfoId;

    public String getLabInfoId() {
        return labInfoId;
    }

    public void setLabInfoId(String labInfoId) {
        this.labInfoId = labInfoId;
    }

    public String getLabname() {
        return labname;
    }

    public void setLabname(String labname) {
        this.labname = labname;
    }

    private Integer lcode;

    public Integer getLcode() {
        return lcode;
    }

    public void setLcode(Integer lcode) {
        this.lcode = lcode;
    }

    /**
     * 地址
     */
    private String address;
    /**
     * 申请人
     */
    private String apler;
    /**
     * 实验室状态
     */
    private String labstatus;
    /**
     * 状态改变的时间
     */
    private String apltime;
    /**
     * 起始行
     */
    private Integer start;
    /**
     * 所取行数
     */
    private Integer rows;


    public String getApler() {
        return apler;
    }

    public void setApler(String apler) {
        this.apler = apler;
    }

    public String getApltime() {
        return apltime;
    }

    public void setApltime(String apltime) {
        this.apltime = apltime;
    }

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

    public String getLabid() {
        return labid;
    }

    public void setLabid(String labid) {
        this.labid = labid;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLabstatus() {
        return labstatus;
    }

    public void setLabstatus(String labstatus) {
        this.labstatus = labstatus;
    }
}
