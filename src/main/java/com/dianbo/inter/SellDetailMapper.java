package com.dianbo.inter;

import java.util.List;

import com.dianbo.model.SellDetail;

public interface SellDetailMapper {
    int deleteByPrimaryKey(Integer sId);

    int insert(SellDetail record);

    int insertSelective(SellDetail record);

    SellDetail selectByPrimaryKey(Integer sId);

    int updateByPrimaryKeySelective(SellDetail record);

    int updateByPrimaryKey(SellDetail record);
    
    List<SellDetail> selectBySellId(int sId);
}