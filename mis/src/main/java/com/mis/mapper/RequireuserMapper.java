package com.mis.mapper;

import com.mis.pojo.Requireuser;
import com.mis.pojo.RequireuserExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RequireuserMapper {

    List selectAll();

    int countByExample(RequireuserExample example);

    int deleteByExample(RequireuserExample example);

    int deleteByPrimaryKey(String id);

    int insert(Requireuser record);

    String selectByPhone(String phone);

    String selectCompanyByPhone(String phone);

    int insertSelective(Requireuser record);

    List<Requireuser> selectByExample(RequireuserExample example);

    Requireuser selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Requireuser record, @Param("example") RequireuserExample example);

    int updateByExample(@Param("record") Requireuser record, @Param("example") RequireuserExample example);

    int updateByPrimaryKeySelective(Requireuser record);

    int updateByPrimaryKey(Requireuser record);
}