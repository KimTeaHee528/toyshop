package com.King.infra.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.King.infra.common.constants.Constants;

public class CheckLoginSessionInterception extends HandlerInterceptorAdapter{
		@Override
		public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
				throws Exception {
			if (request.getSession().getAttribute("sessSeq") != null) {
				
//				// 관리자 유무
//				if (request.getSession().getAttribute("sessAdminNy") == "1") {
//					//관리자 권한
//					System.out.println("관리자!!");
//					
//				}else {
//					//일반 회원 권한
//					System.out.println("일반회원!!");
//				}
			} else {
				response.sendRedirect(Constants.URL_LOGINFORM);
				System.out.println("세션없음!!");
	            return false;
			}
			return super.preHandle(request, response, handler);
		}
}
