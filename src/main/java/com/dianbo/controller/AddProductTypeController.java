package com.dianbo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.dianbo.model.ProductType;
import com.dianbo.service.ProductMService;
import com.dianbo.service.impl.ProductMServiceImpl;

public class AddProductTypeController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Map<String, Object> model = new HashMap<String, Object>();

		try {
			ProductMService productMService = new ProductMServiceImpl();

			String typename = request.getParameter("typename");

			ProductType pt = new ProductType();
			pt.settType(typename);

			productMService.addType(pt);

			List<ProductType> list = productMService.getAllType();

			model.put("result", list);

			return new ModelAndView("class_management", model);
		} catch (Exception e) {
			model.put("success", "失败");
			e.printStackTrace();
			return new ModelAndView("success", model);
		}
	}

}
