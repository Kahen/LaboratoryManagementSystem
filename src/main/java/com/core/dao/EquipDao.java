package com.core.dao;

import com.core.po.Equip;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-09 23:54
 */
public interface EquipDao {

    public List<Equip> selectEquipList(Equip equip);

    public Integer selectEquipListCount(Equip equip);

    public int createequip(Equip equip);

    public Equip findequipByEcode(Integer ecode);

    public int updateEquip(Equip equip);

    public int deleteEquip(Integer ecode);

    List<Equip> selectEquipaplList(Equip equip);

    Integer selectEquipaplListCount(Equip equip);

    int passEquip(@Param("ecode") Integer ecode,
                  @Param("apltime") String apltime,
                  @Param("estatus") String estatus);

    int rejectEquip(@Param("ecode") Integer ecode,
                    @Param("apltime") String apltime,
                    @Param("estatus") String estatus);

    int createequiplog(Equip equip);

    Equip findequipaplByEcode(Integer ecode);

    int uploadEquipapl(Equip equip);

    Equip findequipByeid(String eid);
}
