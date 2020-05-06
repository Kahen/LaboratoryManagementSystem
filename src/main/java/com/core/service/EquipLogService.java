package com.core.service;

import com.common.utils.Page;
import com.core.po.EquipLog;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-10 0:04
 * 设备Service层接口
 */
public interface EquipLogService {
    public Page<EquipLog> findEquiplogList(Integer page, Integer rows, String ename);

    public int createEquiplog(EquipLog equipLog);

    int deleteEquiplog(Integer ecode);

    int updateEquiplog(EquipLog equipLog);

    EquipLog findEquiplogByecode(Integer ecode);

    Page<EquipLog> findEquiplogresultList(Integer page, Integer rows, String apler);
}
