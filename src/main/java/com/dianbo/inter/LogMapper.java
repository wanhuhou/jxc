package com.dianbo.inter;

import com.dianbo.model.Log;

public interface LogMapper {
    int deleteByPrimaryKey(Integer lId);

    int insert(Log record);

    int insertSelective(Log record);

    Log selectByPrimaryKey(Integer lId);

    int updateByPrimaryKeySelective(Log record);

    int updateByPrimaryKey(Log record);
}