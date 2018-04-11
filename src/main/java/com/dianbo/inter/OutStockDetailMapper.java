package com.dianbo.inter;

import java.util.List;

import com.dianbo.model.OutStock;
import com.dianbo.model.OutStockDetail;

public interface OutStockDetailMapper {
    int deleteByPrimaryKey(Integer oId);

    int insert(OutStockDetail record);

    int insertSelective(OutStockDetail record);

    OutStockDetail selectByPrimaryKey(Integer oId);

    int updateByPrimaryKeySelective(OutStockDetail record);

    int updateByPrimaryKey(OutStockDetail record);
    
    List<OutStockDetail> selectByOutStocksId(int oid);
}