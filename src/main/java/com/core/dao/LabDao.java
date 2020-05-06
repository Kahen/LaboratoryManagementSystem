package com.core.dao;

import com.core.po.Lab;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author 李家幸
 * @class 计科三班
 * @create 2019-09-09 23:54
 */
public interface LabDao {
    public List<Lab> selectLabList(Lab lab);

    public Integer selectLabListCount(Lab lab);

    public List<Lab> selectaplLabList(Lab lab);

    public int createLab(Lab lab);

    public Integer updateLab(Lab lab);

    public Lab findLabBylcode(Integer lcode);

    public Integer deleteLab(Integer lcode);

    public int passLab(@Param("lcode") Integer lcode,
                       @Param("apltime") String apltime,
                       @Param("labstatus") String labstatus);

    public int rejectLab(@Param("lcode") Integer lcode,
                         @Param("apltime") String apltime,
                         @Param("labstatus") String labstatus,
                         @Param("apler") String apler);

    int aplLab(@Param("lcode") Integer lcode,
               @Param("apltime") String apltime,
               @Param("labstatus") String labstatus,
               @Param("apler") String apler);

    int returnLab(@Param("lcode") Integer lcode,
                  @Param("apltime") String apltime,
                  @Param("labstatus") String labstatus,
                  @Param("apler") String apler);
}
