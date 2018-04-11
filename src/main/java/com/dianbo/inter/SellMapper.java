package com.dianbo.inter;

import java.util.List;

import com.dianbo.model.Sell;

public interface SellMapper {
    int deleteByPrimaryKey(Integer sId);

    int insert(Sell record);

    int insertSelective(Sell record);

    Sell selectByPrimaryKey(Integer sId);

    int updateByPrimaryKeySelective(Sell record);

    int updateByPrimaryKey(Sell record);
    
    List<Sell> selectAll();
    
    List<Sell> selectByShopId(int sId);
}