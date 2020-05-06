package com.core.service;

import com.common.utils.Page;
import com.core.po.Lab;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-10 0:04
 * 实验室Service层接口
 */
public interface LabService {
    public Page<Lab> findLabList(Integer page, Integer rows, String labid);

    public Page<Lab> findapllabList(Integer page, Integer rows, String labid);

    public int createLab(Lab lab);

    public Lab findLabBylcode(Integer lcode);

    public int updateLab(Lab lab);

    public Integer deleteLab(Integer lcode);

    public int passLab(Integer lcode);

    public int rejectLab(Integer lcode);

    public int aplLab(Integer lcode, String apler);

    int returnLab(Integer lcode);
}
