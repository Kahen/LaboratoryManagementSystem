package com.core.service.impl;

import com.common.utils.Page;
import com.core.dao.LabDao;
import com.core.po.Lab;
import com.core.service.LabService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-26 19:41
 */
@Service("LabService")
public class LabServiceImpl implements LabService {
    @Autowired
    private LabDao labDao;

    @Override
    public Page<Lab> findLabList(Integer page, Integer rows, String labid) {
        Lab lab = new Lab();
        if (StringUtils.isNotBlank(labid)) {
            lab.setLabid(labid);
        }
        lab.setStart((page - 1) * rows);
        lab.setRows(rows);
        List<Lab> labs = labDao.selectLabList(lab);
        Integer count = labDao.selectLabListCount(lab);
        Page<Lab> result = new Page<>();
        result.setPage(page);
        result.setRows(labs);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public Page<Lab> findapllabList(Integer page, Integer rows, String labid) {
        Lab lab = new Lab();
        if (StringUtils.isNotBlank(labid)) {
            lab.setLabid(labid);
        }
        lab.setStart((page - 1) * rows);
        lab.setRows(rows);
        List<Lab> labs = labDao.selectaplLabList(lab);
        Integer count = labDao.selectLabListCount(lab);
        Page<Lab> result = new Page<>();
        result.setPage(page);
        result.setRows(labs);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int createLab(Lab lab) {
        return labDao.createLab(lab);
    }

    @Override
    public Lab findLabBylcode(Integer lcode) {
        return labDao.findLabBylcode(lcode);
    }

    @Override
    public int updateLab(Lab lab) {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String cc = sdf.format(date);
        lab.setApltime(cc);
        return labDao.updateLab(lab);
    }

    @Override
    public Integer deleteLab(Integer lcode) {
        return labDao.deleteLab(lcode);
    }

    @Override
    public int passLab(Integer lcode) {
        Date cc = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String apltime = sdf.format(cc);
        String labstatus = "已预订";
        return labDao.passLab(lcode, apltime, labstatus);
    }

    @Override
    public int rejectLab(Integer lcode) {
        Date cc = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String apltime = sdf.format(cc);
        String labstatus = "空闲中";
        String apler = null;
        return labDao.rejectLab(lcode, apltime, labstatus, apler);
    }

    @Override
    public int aplLab(Integer lcode, String apler) {
        Date cc = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String apltime = sdf.format(cc);
        String labstatus = "审核中";
        return labDao.aplLab(lcode, apltime, labstatus, apler);
    }

    @Override
    public int returnLab(Integer lcode) {
        Date cc = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String apltime = sdf.format(cc);
        String labstatus = "空闲中";
        String apler = null;
        return labDao.returnLab(lcode, apltime, labstatus, apler);
    }
}
