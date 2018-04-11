package com.dianbo.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dianbo.model.Shop;
import com.dianbo.model.Stock;

public interface StockQueryService {
	public List<Object> stockQuery(int shopId) throws Exception;
	public List<Shop> shopQuery() throws Exception;
	public String QueryShopName(int shopId) throws Exception;
}
