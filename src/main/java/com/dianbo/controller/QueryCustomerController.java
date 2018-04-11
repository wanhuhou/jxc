package com.dianbo.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.dianbo.model.Customer;
import com.dianbo.model.ProductType;
import com.dianbo.service.CustomerService;
import com.dianbo.service.ProductMService;
import com.dianbo.service.impl.CustomerServiceImpl;
import com.dianbo.service.impl.ProductMServiceImpl;

public class QueryCustomerController implements Controller {

	@Override
	public ModelAndView handleRequest(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Map<String, Object> model = new HashMap<String, Object>();

		try {

			CustomerService customerService = new CustomerServiceImpl();

			List<Customer> list = customerService.queryCustomer();

			model.put("result", list);

			return new ModelAndView("customer_management", model);
		} catch (Exception e) {
			model.put("error", "操作失败");
			e.printStackTrace();
			return new ModelAndView("error", model);
		}
	}

}
