package com.mis.mapper;

import com.mis.pojo.Requireorder;
import com.mis.pojo.RequireorderExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RequireorderMapper {
    int countByExample(RequireorderExample example);

    int deleteByExample(RequireorderExample example);

    int deleteByPrimaryKey(String id);

    int insert(Requireorder record);

    int insertSelective(Requireorder record);

    List<Requireorder> selectByExample(RequireorderExample example);

    List<Requireorder> selectByUsername(String username);

    List<Requireorder> selectByType(String type);

    List<Requireorder> selectAll();

    Requireorder selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Requireorder record, @Param("example") RequireorderExample example);

    int updateByExample(@Param("record") Requireorder record, @Param("example") RequireorderExample example);

    int updateByPrimaryKeySelective(Requireorder record);

    int updateByPrimaryKey(Requireorder record);

    int updateStatus(String id);

    int updateById(Requireorder requireorder);
}