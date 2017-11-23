package com.sei.web.servlet;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sei.web.servlet.ReaderDBFile;
import com.sei.web.servlet.User;
import com.sei.web.servlet.WriterDBFile;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		register(request,response);
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String method = request.getParameter("method");
		String message = null;
		
		String username = request.getParameter("username");
		System.out.println("username="+username);
		String password1 = request.getParameter("password1");
		String password2 = request.getParameter("password2");
//		System.out.println("password="+password);
		String data=request.getParameter("StrData");
		String data2=request.getParameter("StrData2");
		
		//�����֤�����
		String sessionCode=(String) request.getSession().getAttribute("session_vcode");
		System.out.println(sessionCode);
		String paramCode = request.getParameter("verifyCode");
		
		String count="0";
		User u = null;
		String file = "userID/dbfile.txt";
		ReaderDBFile rdf = new ReaderDBFile();
		u = (User) rdf.ReaderFileUse(username, password1,count);
		if (username == ""){
			message = "用户名为空，注册失败！";
			request.setAttribute("message", message);
			if (method.equals("registerFirst")) {
				request.getRequestDispatcher("/registerFirst.jsp").forward(request, response);
			} else if (method.equals("registerAfter")) {
				request.getRequestDispatcher("/registerAfter.jsp").forward(request, response);
			} 
		}
		
		else if(password1==""||password2=="") {
			message = "密码为空，注册失败！";
			request.setAttribute("message", message);
			if (method.equals("registerFirst")) {
				request.getRequestDispatcher("/registerFirst.jsp").forward(request, response);
			} else if (method.equals("registerAfter")) {
				request.getRequestDispatcher("/registerAfter.jsp").forward(request, response);
			} 
		}
		else if(!password1.equals(password2)) {
			message = "两次密码输入不同，请再次确认！";
			request.setAttribute("message", message);
			if (method.equals("registerFirst")) {
				request.getRequestDispatcher("/registerFirst.jsp").forward(request, response);
			} else if (method.equals("registerAfter")) {
				request.getRequestDispatcher("/registerAfter.jsp").forward(request, response);
			} 
		}
		else if (u.getUsername() == username){
			message = "用户名已存在，注册失败！";
			System.out.println("u.getUsername()="+u.getUsername());
			request.setAttribute("message", message);
			if (method.equals("registerFirst")) {
				request.getRequestDispatcher("/registerFirst.jsp").forward(request, response);
			} else if (method.equals("registerAfter")) {
				request.getRequestDispatcher("/registerAfter.jsp").forward(request, response);
			} 
		}

		else{
			
			if(paramCode==null) {
				request.setAttribute("message", "请填写验证码！");
				if (method.equals("registerFirst")) {
					request.getRequestDispatcher("/registerFirst.jsp").forward(request, response);
				} else if (method.equals("registerAfter")) {
					request.getRequestDispatcher("/registerAfter.jsp").forward(request, response);
				} 
				return;
			}
			
			if(!paramCode.equalsIgnoreCase(sessionCode)) {
				request.setAttribute("message", "验证码错误！");
				if (method.equals("registerFirst")) {
					request.getRequestDispatcher("/registerFirst.jsp").forward(request, response);
				} else if (method.equals("registerAfter")) {
					request.getRequestDispatcher("/registerAfter.jsp").forward(request, response);
				} 
				return;
			}
			
			
		WriterDBFile wdf = new WriterDBFile();
		wdf.WriterFileUse(username + "\t\t" + password1 + "\t\t"+count+"\r\n");
		
		request.setAttribute("message", message);
		//����ͳ�ƵĲ�ͬ�ɼ���Ŀ�Ĵ���
		HttpSession session = request.getSession();
		session.setAttribute("loginNum", 5);
		session.setAttribute("changePwdNum", 5);
		session.setAttribute("miaoshaNum", 5);
		session.setAttribute("huadongNum", 5);
		session.setAttribute("huaVerNum", 5);
		session.setAttribute("registerName", username);
		
		DataToFile(data,username,"register","screen");
		DataToFile(data2,username,"register","client");
		if (method.equals("registerFirst")) {
			request.getRequestDispatcher("/stuCollect.jsp").forward(request, response);
		} else if (method.equals("registerAfter")) {
			request.getRequestDispatcher("/menu.jsp").forward(request, response);
		} 

     	
		}
		
	}

	public void DataToFile(String s,String name,String method,String type) throws IOException{
	String path=null;
	File filePath;
	
	    path = "D:\\seimouseweb3\\" + name+"\\"+method+"\\"+type;
		filePath = new File(path);
		if (!filePath.exists()) {
			filePath.mkdirs();
		}
		File[] fileList=new File(path).listFiles();
		int fileNum=fileList.length;
		fileNum=fileNum+1;
		File files = new File( path + "/" + name + "_"+fileNum+".txt");	
		if (!files.exists()) {
   			  files.createNewFile();
   		  }
		FileWriter writer = new FileWriter(path + "/" + name + "_"+fileNum+".txt", true);// ׷��
		writer.write(s);
		writer.close();
	
	}


}
