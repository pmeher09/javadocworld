package com.javadw.servlets;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import com.javadw.bo.TrickyProgramsBo;
import com.javadw.util.NavigationRecordsUtil;

public class StartUpServlet extends HttpServlet {
	@Autowired
	TrickyProgramsBo trickyProgramsBo;
	

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		SpringBeanAutowiringSupport.processInjectionBasedOnCurrentContext(this);
		
		System.out.println("StartUpServlet..");

		NavigationRecordsUtil.init();
		
		//Initialize the TrickyLink count
		int totalTlinks = trickyProgramsBo.getLinkCount();
		System.out.println("TotalTLinks : " + totalTlinks);
		NavigationRecordsUtil.totalTLinks = totalTlinks;
	}
}
