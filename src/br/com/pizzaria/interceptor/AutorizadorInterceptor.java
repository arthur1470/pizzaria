package br.com.pizzaria.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String uri = request.getRequestURI();
		
		if(uri.endsWith("pedidos") && request.getSession().getAttribute("adminLogado") == null) {
			return false;
		}
		
		if(uri.endsWith("inicio") || uri.endsWith("rodape") || uri.endsWith("/header") ||
				uri.endsWith("header") || uri.endsWith("cardapio") || uri.endsWith("adm") ||
				uri.endsWith("logarAdmin") || uri.endsWith("cadastro") || uri.endsWith("cadastrarCliente") ||
				uri.endsWith("logar") || uri.endsWith("quemSomos") || uri.endsWith("promocoes") ||
				uri.endsWith("") ||	uri.contains("resources")) {
			
			return true;
		}
		if(request.getSession().getAttribute("adminLogado") != null) {
			return true;
		}
		if(request.getSession().getAttribute("clienteLogado") != null) {
			return true;
		}
		
		response.sendRedirect("inicio");
		return false;
	}
}
