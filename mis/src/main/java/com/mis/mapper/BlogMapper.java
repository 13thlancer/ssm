package com.mis.mapper;

import com.mis.pojo.Blog;
import com.mis.pojo.BlogExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BlogMapper {
    int countByExample(BlogExample example);

    int deleteByExample(BlogExample example);

    int deleteByPrimaryKey(String id);

    int insert(Blog record);

    int insertSelective(Blog record);

    List<Blog> selectByExample(BlogExample example);

    List selectAll();

    Blog selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Blog record, @Param("example") BlogExample example);

    int updateByExample(@Param("record") Blog record, @Param("example") BlogExample example);

    int updateByPrimaryKeySelective(Blog record);

    int updateByPrimaryKey(Blog record);
}