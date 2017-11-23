package com.sei.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//���һ��OutServlet ��Ϊ����������������menu��������й��˲�����sessionֵ��5����ʱ������ת��
//��sessionֵΪ��ʱ����������ϵͳ��

@WebServlet("/OutServlet")
public class OutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String WebType=request.getParameter("WebType");
		
		HttpSession session = request.getSession();
		int loginNum=(int) session.getAttribute("loginNum");
		int changeNum=(int) session.getAttribute("changePwdNum");
		int miaoshaNum=(int) session.getAttribute("miaoshaNum");
		int huadongNum=(int) session.getAttribute("huadongNum");
		int huaVerNum=(int) session.getAttribute("huaVerNum");
		
        if(WebType.equals("loginCollect")){
        	if(loginNum!=0)response.sendRedirect("/WebDataTest3/loginCollect.jsp");
        	else{
        		request.setAttribute("warning", "登录采集项目已经完成！");
        		request.getRequestDispatcher("/menu.jsp").forward(request, response);
        	} 
        }else if(WebType.equals("changePwdNumCollect")){
        	if(changeNum!=0)response.sendRedirect("/WebDataTest3/changePwdCollect.jsp");
        	else{
        		request.setAttribute("warning", "改密采集项目已经完成！");
        		request.getRequestDispatcher("/menu.jsp").forward(request, response);
        	} 
        	
        }else if(WebType.equals("miaoshaCollect")){
        	if(miaoshaNum!=0)response.sendRedirect("/WebDataTest3/miaoshaCollect.jsp");
        	else{
        		request.setAttribute("warning", "秒杀采集项目已经完成！");
        		request.getRequestDispatcher("/menu.jsp").forward(request, response);
        	} 
        	
        }else if(WebType.equals("huadongCollect")){
        	if(huadongNum!=0)response.sendRedirect("/WebDataTest3/huadongCollect.jsp");
        	else{
        		request.setAttribute("warning", "横向滑动采集项目已经完成！");
        		request.getRequestDispatcher("/menu.jsp").forward(request, response);
        	} 
        	
        }else if(WebType.equals("huaVerCollect")){
        	if(huaVerNum!=0)response.sendRedirect("/WebDataTest3/huaVerCollect.jsp");
        	else{
        		request.setAttribute("warning", "纵向滑动采集项目已经完成！");
        		request.getRequestDispatcher("/menu.jsp").forward(request, response);
        	} 
        	
        }else if(WebType.equals("outSystem")){
        	if(miaoshaNum==0&&changeNum==0&&loginNum==0&&huadongNum==0&&huaVerNum==0){
//        		session.setAttribute("registerName", null);
        		response.sendRedirect("/WebDataTest3/out.jsp");}
        	else{
        		request.setAttribute("warning", "您还有项目没有完成，暂不能退出！");
        		request.getRequestDispatcher("/menu.jsp").forward(request, response);
        	} 
        }
        
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
