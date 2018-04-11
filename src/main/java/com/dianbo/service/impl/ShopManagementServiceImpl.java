package com.dianbo.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dianbo.inter.ShopMapper;
import com.dianbo.model.Shop;
import com.dianbo.service.ShopManagementService;
import com.dianbo.utils.SessionUtils;

public class ShopManagementServiceImpl implements ShopManagementService {

	@Override
	public List<Shop> shopShow() throws Exception {
		SqlSession sqlSession = null;
		List<Shop> shops = null;
		
		try {
			sqlSession = SessionUtils.getSession();
			ShopMapper shopMapper = sqlSession.getMapper(ShopMapper.class);
			
			shops = shopMapper.selectAllShops();
		} catch (Exception e) {
			throw e;
		}finally{
			SessionUtils.closeSession(sqlSession);
		}
		return shops;
	}

	@Override
	public int shopAdd(Shop shop) throws Exception {
		SqlSession sqlSession = null;
		int result = 0;
		
		try {
			sqlSession = SessionUtils.getSession();
			ShopMapper shopMapper = sqlSession.getMapper(ShopMapper.class);
			shopMapper.insert(shop);
			sqlSession.commit();
			result = 1;
			//System.out.println("......."+result);
		} catch (Exception e) {
			sqlSession.rollback();
			throw e;
		}finally{
			SessionUtils.closeSession(sqlSession);
		}


		return result;
	}

	@Override
	public int shopDelete(Integer sId) throws Exception {
		SqlSession sqlSession = null;
		int result = 0;
		
		try {
			sqlSession = SessionUtils.getSession();
			ShopMapper shopMapper = sqlSession.getMapper(ShopMapper.class);
			shopMapper.deleteByPrimaryKey(sId);
			sqlSession.commit();
			result = 1;
			//System.out.println("...."+result);
		} catch (Exception e) {
			sqlSession.rollback();
			throw e;
		}finally{
			SessionUtils.closeSession(sqlSession);
		}
		return result;
		
	}
}
