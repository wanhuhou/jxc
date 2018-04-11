package com.dianbo.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import com.dianbo.inter.ProductMapper;
import com.dianbo.inter.ShopMapper;
import com.dianbo.inter.StockMapper;
import com.dianbo.model.Product;
import com.dianbo.model.Shop;
import com.dianbo.model.Stock;
import com.dianbo.service.StockQueryService;
import com.dianbo.utils.SessionUtils;
import java.util.List;


public  class StockQueryServiceImpl implements StockQueryService {
	
	public List<Object> stockQuery(int shopId) throws Exception {
		SqlSession sqlSession = null;

		List<Object> list = new ArrayList<Object>();

		try {
			sqlSession =  SessionUtils.getSession();
			
			StockMapper stockMapper = sqlSession.getMapper(StockMapper.class);
			ProductMapper productMapper = sqlSession.getMapper(ProductMapper.class);
			
			List<Stock> stocks = stockMapper.selectByshopId(shopId);
			for(Stock stock:stocks)
			{
				//System.out.print("//"+stock.getsNum());
				Product product = productMapper.selectByPrimaryKey(stock.getpId());

				Map<String, Object> map = new HashMap<String, Object>();
				map.put("num", stock.getsNum());
				map.put("name", product.getpName());
				map.put("guige", product.getpStyle());
				map.put("price", product.getpPrice());
				list.add(map);
			}
		} catch (Exception e) {
			throw e;
		}finally{
			SessionUtils.closeSession(sqlSession);
		}
		
		return list;
	}

	@Override
	public List<Shop> shopQuery() throws Exception {
		SqlSession sqlSession = null;
		List<Shop> list = null;
		
		try {
			sqlSession = SessionUtils.getSession();
			ShopMapper shopMapper = sqlSession.getMapper(ShopMapper.class);
			
			list = shopMapper.selectAllShops();
		} catch (Exception e) {
			throw e;
		}finally{
			SessionUtils.closeSession(sqlSession);
		}
		return list;
	}

	@Override
	public String QueryShopName(int shopId) throws Exception {
		SqlSession sqlSession = null;
		Shop shop = null;
		
		try {
			sqlSession = SessionUtils.getSession();
			ShopMapper shopMapper = sqlSession.getMapper(ShopMapper.class);
			
			shop = shopMapper.selectByPrimaryKey(shopId);
		} catch (Exception e) {
			throw e;
		}finally{
			SessionUtils.closeSession(sqlSession);
		}
		return shop.getsName();
	}

}
