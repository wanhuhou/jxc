package com.dianbo.inter;

import java.util.List;

import com.dianbo.model.OutStock;

public interface OutStockMapper {
    int deleteByPrimaryKey(Integer oId);

    int insert(OutStock record);

    int insertSelective(OutStock record);

    OutStock selectByPrimaryKey(Integer oId);

    int updateByPrimaryKeySelective(OutStock record);

    int updateByPrimaryKey(OutStock record);
    
    List<OutStock> selectAll();
    
    List<OutStock> selectByShopId(int sId);
}