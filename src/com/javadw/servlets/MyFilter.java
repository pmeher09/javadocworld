package com.javadw.servlets;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.javadw.util.NavigationRecordsUtil;

public class MyFilter implements Filter {

	public void init(FilterConfig arg0) throws ServletException {
	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) req;
		String uri = request.getRequestURI();
		
		/*if(uri.matches(".*(css|jpg|png|gif|js)")){
		    chain.doFilter(request, resp);
		    return;
		}*/
		System.out.println("uri : "+uri);
		try {
			if ((!uri.equals("/")) && uri.contains("/")) {
				String s[] = uri.split("/");
				uri = s[s.length - 1];
			}
			HttpSession session = request.getSession(false);
			if (session == null) {
				session = request.getSession(true);
			}
			session.setAttribute("selectedLink",
					NavigationRecordsUtil.getExamlpleLinkByLink(uri));
		} catch (Exception e) {
			e.printStackTrace();
		}
		chain.doFilter(req, resp);// sends request to next resource

	}

	public void destroy() {
	}
}