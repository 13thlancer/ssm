package com.mis.mapper;

import com.mis.pojo.TBManager;
import com.mis.pojo.TBManagerExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TBManagerMapper {
    int countByExample(TBManagerExample example);

    int deleteByExample(TBManagerExample example);

    int insert(TBManager record);

    int insertSelective(TBManager record);

    List<TBManager> selectByExample(TBManagerExample example);

    int updateByExampleSelective(@Param("record") TBManager record, @Param("example") TBManagerExample example);

    int updateByExample(@Param("record") TBManager record, @Param("example") TBManagerExample example);
}