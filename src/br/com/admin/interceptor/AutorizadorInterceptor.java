package br.com.admin.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String uri = request.getRequestURI();			
		
		if(uri.endsWith("logarAdmin") || uri.endsWith("inicio")
				|| uri.contains("resources")) {
			return true;
		}

		if(request.getSession().getAttribute("adminLogado") != null) {
			return true;
		}
		
		response.sendRedirect("inicio");
		return false;
	}
}
