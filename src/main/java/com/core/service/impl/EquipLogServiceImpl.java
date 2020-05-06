package com.core.service.impl;

import com.common.utils.Page;
import com.core.dao.EquipLogDao;
import com.core.po.EquipLog;
import com.core.service.EquipLogService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-26 19:41
 */
@Service("EquipLogService")
public class EquipLogServiceImpl implements EquipLogService {
    @Autowired
    private EquipLogDao equipLogDao;

    @Override
    public Page<EquipLog> findEquiplogList(Integer page, Integer rows, String ename) {
        EquipLog equipLog = new EquipLog();
        if (StringUtils.isNotBlank(ename)) {
            equipLog.setEname(ename);
        }
        equipLog.setStart((page - 1) * rows);
        equipLog.setRows(rows);
        List<EquipLog> equipLogs = equipLogDao.selectEquipLogList(equipLog);
        Integer count = equipLogDao.selectEquipLogListCount(equipLog);
        Page<EquipLog> result = new Page<>();
        result.setPage(page);
        result.setRows(equipLogs);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int createEquiplog(EquipLog equipLog) {
        return equipLogDao.createEquipLog(equipLog);
    }

    @Override
    public EquipLog findEquiplogByecode(Integer ccode) {
        return equipLogDao.findEquipLogByecode(ccode);
    }

    @Override
    public Page<EquipLog> findEquiplogresultList(Integer page, Integer rows, String apler) {
        EquipLog equipLog = new EquipLog();
        if (StringUtils.isNotBlank(apler)) {
            equipLog.setApler(apler);
        }
        equipLog.setStart((page - 1) * rows);
        equipLog.setRows(rows);
        List<EquipLog> equipLogs = equipLogDao.selectEquipLogResultList(equipLog);
        Integer count = equipLogDao.selectEquipLogListCount(equipLog);
        Page<EquipLog> result = new Page<>();
        result.setPage(page);
        result.setRows(equipLogs);
        result.setSize(rows);
        result.setTotal(count);
        return result;
    }

    @Override
    public int updateEquiplog(EquipLog equipLog) {
        return equipLogDao.updateEquipLog(equipLog);
    }

    @Override
    public int deleteEquiplog(Integer ccode) {
        return equipLogDao.deleteEquipLog(ccode);
    }
}
