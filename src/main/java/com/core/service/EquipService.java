package com.core.service;

import com.common.utils.Page;
import com.core.po.Equip;
import com.core.po.Lab;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-10 0:04
 * 设备Service层接口
 */
public interface EquipService {
    public Page<Equip> findEquipList(Integer page, Integer rows, String ename);

    public int createequip(Equip equip);

    public Equip findequipByEcode(Integer ecode);

    public int updateequip(Equip equip);

    public int deleteEquip(Integer ecode);

    public Page<Equip> findEquipaplList(Integer page, Integer rows, String eid, String ename, String estatus);

    int passEquip(Integer ecode);

    int rejectEquip(Integer ecode);

    int createequiplog(Equip equip);

    Equip findequipaplByEcode(Integer ecode);

    int uploadequipapl(Equip equip);

    Equip findequipaplByeid(String eid);
}
