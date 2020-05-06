package com.core.dao;

import com.core.po.EquipLog;

import java.util.List;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-09 23:54
 */
public interface EquipLogDao {
    public List<EquipLog> selectEquipLogList(EquipLog equipLog);

    public Integer selectEquipLogListCount(EquipLog equipLog);

    public int createEquipLog(EquipLog equipLog);

    EquipLog findEquipLogByecode(Integer ecode);

    int updateEquipLog(EquipLog equipLog);

    int deleteEquipLog(Integer ecode);

    List<EquipLog> selectEquipLogResultList(EquipLog equipLog);
}
