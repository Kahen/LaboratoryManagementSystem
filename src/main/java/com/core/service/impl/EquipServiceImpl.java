package com.core.service.impl;

import com.common.utils.Page;
import com.core.dao.EquipDao;
import com.core.po.Equip;
import com.core.service.EquipService;
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
@Service("EquipService")
public class EquipServiceImpl implements EquipService {
    @Autowired
    private EquipDao equipDao;

    @Override
    public Page<Equip> findEquipList(Integer page, Integer rows, String ename) {
        Equip equip = new Equip();
        if (StringUtils.isNotBlank(ename)) {
            equip.setEname(ename);
        }
        equip.setStart((page - 1) * rows);
        equip.setRows(rows);
        List<Equip> equips = equipDao.selectEquipList(equip);
        Integer count = equipDao.selectEquipListCount(equip);
        Page<Equip> result = new Page<>();
        result.setPage(page);
        result.setRows(equips);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int createequip(Equip equip) {
        return equipDao.createequip(equip);
    }

    @Override
    public Equip findequipByEcode(Integer ecode) {
        return equipDao.findequipByEcode(ecode);
    }

    @Override
    public int updateequip(Equip equip) {
        return equipDao.updateEquip(equip);
    }

    @Override
    public int deleteEquip(Integer ecode) {
        return equipDao.deleteEquip(ecode);
    }

    @Override
    public Page<Equip> findEquipaplList(Integer page, Integer rows, String eid, String ename, String estatus) {
        Equip equip = new Equip();
        if (StringUtils.isNotBlank(eid)) {
            equip.setEid(eid);
        }
        if (StringUtils.isNotBlank(ename)) {
            equip.setEname(ename);
        }
        if (StringUtils.isNotBlank(estatus)) {
            equip.setEstatus(estatus);
        }
        equip.setStart((page - 1) * rows);
        equip.setRows(rows);
        List<Equip> equips = equipDao.selectEquipaplList(equip);
        Integer count = equipDao.selectEquipaplListCount(equip);
        Page<Equip> result = new Page<>();
        result.setPage(page);
        result.setRows(equips);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int passEquip(Integer ecode) {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String cc = sdf.format(date);
        String estatus = "已通过";
        return equipDao.passEquip(ecode, cc, estatus);
    }

    @Override
    public int rejectEquip(Integer ecode) {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String cc = sdf.format(date);
        String estatus = "已拒绝";
        return equipDao.rejectEquip(ecode, cc, estatus);
    }

    @Override
    public int createequiplog(Equip equip) {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String cc = sdf.format(date);
        equip.setApltime(cc);
        return equipDao.createequiplog(equip);
    }

    @Override
    public Equip findequipaplByEcode(Integer ecode) {
        return equipDao.findequipaplByEcode(ecode);
    }

    @Override
    public int uploadequipapl(Equip equip) {
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //格式化为日期/时间字符串
        String cc = sdf.format(date);
        equip.setApltime(cc);
        equip.setEstatus("审核中");
        return equipDao.uploadEquipapl(equip);
    }

    @Override
    public Equip findequipaplByeid(String eid) {
        return equipDao.findequipByeid(eid);
    }

}
