package br.com.pizzaria.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		String uri = request.getRequestURI();			
		
		if(uri.endsWith("finalizarPedido") && request.getSession().getAttribute("clienteLogado") == null){
			response.sendRedirect("login");
			return false;
		}
		if(uri.endsWith("meusDados") && request.getSession().getAttribute("clienteLogado") == null){
			response.sendRedirect("login");
			return false;
		}
		
		return true;
	}
}
