package hrmanagerfront.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class UserInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	      HttpSession session = request.getSession();
	      String username =(String)session.getAttribute("username");
	      
	      if(username.isBlank()) {
	    	  return false;
	      }else {
	    	  return true;
	      }
	}
}
