package com.core.po;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-28 8:51
 */
public class EquipLog {
    private String eid;
    private String ename;
    private Integer enumber;
    private Integer ecode;
    private String apler;
    private String apltime;
    /**
     * 起始行
     */
    private Integer start;
    /**
     * 所取行数
     */
    private Integer rows;

    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public Integer getEnumber() {
        return enumber;
    }

    public void setEnumber(Integer enumber) {
        this.enumber = enumber;
    }

    public Integer getEcode() {
        return ecode;
    }

    public void setEcode(Integer ecode) {
        this.ecode = ecode;
    }

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
}
