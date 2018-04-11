package com.dianbo.inter;

import java.util.List;

import com.dianbo.model.Shop;

public interface ShopMapper {
    int deleteByPrimaryKey(Integer sId);

    int insert(Shop record);

    int insertSelective(Shop record);

    Shop selectByPrimaryKey(Integer sId);

    int updateByPrimaryKeySelective(Shop record);

    int updateByPrimaryKey(Shop record);

	Shop selectBySName(String sName);

	List<Shop> selectAllShops();
}