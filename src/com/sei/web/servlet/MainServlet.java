package com.sei.web.servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sei.web.servlet.ReaderDBFile;
import com.sei.web.servlet.User;
import com.sei.web.servlet.WriterDBFile;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String method = request.getParameter("method");
		//System.out.println("method=" + method);
		if (method == null) {
			method = "";
		}
		if (method.equals("loginCollect")) {
			loginTests(request, response);
		} else if (method.equals("changePwdCollect")) {
			changePwdTest(request, response);
		}else if (method.equals("miaoshaCollect")) {
			miaoshaTest(request, response);
		}else if (method.equals("huadongCollect")) {
			huadongTest(request, response);
		}else if (method.equals("huaVerCollect")) {
			huaVerTest(request, response);
		}else if (method.equals("huadongCollectRobot")){
			huadongTestRobot(request, response);
		}
		
		
		
	}


	private void huaVerTest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		// TODO Auto-generated method stub
		response.setCharacterEncoding("utf-8");

		String data=request.getParameter("StrData");
		String data1=request.getParameter("StrData2");
/*		System.out.println(data);*/
		String count=null;		
			HttpSession session = request.getSession();
			int huaVerNum=(int) session.getAttribute("huaVerNum");
			String registerName=(String)session.getAttribute("registerName");
			if(huaVerNum!=0){
				session.setAttribute("huaVerNum", huaVerNum-1);
			}
			 DataToFile(data,registerName,"HDVertical","screen");
			 DataToFile(data1,registerName,"HDVertical","client");
			request.getRequestDispatcher("/menu.jsp").forward(request,
					response);
	}

	private void huadongTest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setCharacterEncoding("utf-8");

		String data=request.getParameter("StrData");
		String data1=request.getParameter("StrData2");
/*		System.out.println(data);*/
		String count=null;		
			HttpSession session = request.getSession();
			int huadongNum=(int) session.getAttribute("huadongNum");
			String registerName=(String)session.getAttribute("registerName");
			if(huadongNum!=0){
				session.setAttribute("huadongNum", huadongNum-1);
			}
			 DataToFile(data,registerName,"HDhorizontal","screen");
			 DataToFile(data1,registerName,"HDhorizontal","client");
			request.getRequestDispatcher("/menu.jsp").forward(request,
					response);
		
	}
	
	private void huadongTestRobot(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setCharacterEncoding("utf-8");

		String data=request.getParameter("StrData");
		String data1=request.getParameter("StrData2");
/*		System.out.println(data);*/
		String count=null;
			String registerName=request.getParameter("robotID");
			 DataToFile(data,registerName,"HDhorizontal","screen");
			 DataToFile(data1,registerName,"HDhorizontal","client");
			 String newRequest = "/huadongCollectRobot.jsp?robotID="+registerName;
			request.getRequestDispatcher(newRequest).forward(request,
					response);
		
	}

	private void changePwdTest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        response.setCharacterEncoding("utf-8");
		
		String message = null;
		BufferedReader br=null;
		String line;
		boolean label = false;
		String buf = "";
		
		String username = request.getParameter("username");
		String oldpassword = request.getParameter("oldpassword");
		String newpassword1 = request.getParameter("newpassword1");
		String newpassword2 = request.getParameter("newpassword2");
		String data=request.getParameter("StrData");
		String data1=request.getParameter("StrData2");

		
		System.out.println("username="+username);
		System.out.println("oldpassword="+oldpassword);
		System.out.println("newpassword1="+newpassword1);
		System.out.println("newpassword2="+newpassword2);
		
		
		//�����֤�����
		String sessionCode=(String) request.getSession().getAttribute("session_vcode");
		System.out.println(sessionCode);
		String paramCode = request.getParameter("verifyCode");
		
		String count="0";
		User u = null;
		String file = "userID/dbfile.txt";
		ReaderDBFile rdf = new ReaderDBFile();
		
		if (username==null||username.length()==0){
			message = "用户名为空，更改失败！";
			request.setAttribute("message", message);
			request.getRequestDispatcher("/changePwdCollect.jsp").forward(request, response);
			return;
		}
		if (oldpassword==null||oldpassword.length()==0){
			message = "原密码为空，更改失败！";
			request.setAttribute("message", message);
			request.getRequestDispatcher("/changePwdCollect.jsp").forward(request, response);
			return;
		}
		if (newpassword1==""||newpassword2==""){
			message = "新密码输入有误，请重新输入！";
			request.setAttribute("message", message);
			request.getRequestDispatcher("/changePwdCollect.jsp").forward(request, response);
			return;
		}

		else if(!newpassword1.equals(newpassword2)) {
			message = "两次密码输入不同，请重新填写！";
			request.setAttribute("message", message);
			request.getRequestDispatcher("/changePwdCollect.jsp").forward(request, response);
			return;
		}
		u = (User) rdf.ReaderFileUse(username, oldpassword,count);
	   if (u.getUsername() == username&&u.getPassword()==oldpassword){
		   
			if(paramCode==null) {
				request.setAttribute("message", "请填写验证码！");
				request.getRequestDispatcher("/changePwdCollect.jsp").forward(request, response);
				return;
			}
			
			if(!paramCode.equalsIgnoreCase(sessionCode)) {
				request.setAttribute("message", "验证码错误！");
				request.getRequestDispatcher("/changePwdCollect.jsp").forward(request, response);
				return;
			}
		   
			br = new BufferedReader(new FileReader("D://userID//dbfile.txt"));
			             
	       
			while ((line = br.readLine()) != null) {
				
				String[] linesarr = line.split("\\s+");
//				System.out.println(ll);
				if (linesarr[linesarr.length - 3].equals(username)){
					buf+=username+"\t\t"+newpassword1+"\t\t"+linesarr[linesarr.length - 1]+"\n";
					System.out.println(buf);
				}else{
					buf+=line+"\n";
				}
			}
			 br.close();
			 
			 WriterDBFile wdf = new WriterDBFile();
		     wdf.WriterFileCover(buf);
			 
		     HttpSession session = request.getSession();
			 int changePwdNum=(int) session.getAttribute("changePwdNum");
			 if(changePwdNum!=0){
					session.setAttribute("changePwdNum", changePwdNum-1);
			}
		         
		     
			 DataToFile(data,username,"changePwd","screen");
			 DataToFile(data1,username,"changePwd","client");
			 request.getRequestDispatcher("/menu.jsp").forward(request, response);				
		}else{
			request.setAttribute("message", "用户名或密码不正确！");		
			request.getRequestDispatcher("/changePwdCollect.jsp").forward(request,response);
		}
	}

	

	
	
	private void loginTests(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String data=request.getParameter("StrData");
		String data1=request.getParameter("StrData2");
		String count=null;
		
		//�����֤�����
		String sessionCode=(String) request.getSession().getAttribute("session_vcode");
		System.out.println(sessionCode);
		String paramCode = request.getParameter("verifyCode");
		
		
		int a=10;
		User u = null;
		String file = "userID/dbfile.txt";
		ReaderDBFile rdf = new ReaderDBFile();
		u = (User) rdf.ReaderFileUse(username, password,count);
	
		
		if (u.getUsername() == username&&u.getPassword()==password) {
			if(paramCode==null) {
				request.setAttribute("message", "请填写验证码！");
				request.getRequestDispatcher("/loginCollect.jsp").forward(request, response);
				return;
			}
			
			if(!paramCode.equalsIgnoreCase(sessionCode)) {
				request.setAttribute("message", "验证码错误！");
				request.getRequestDispatcher("/loginCollect.jsp").forward(request, response);
				return;
			}
			HttpSession session = request.getSession();
			int loginNum=(int) session.getAttribute("loginNum");
			if(loginNum!=0){
				session.setAttribute("loginNum", loginNum-1);
			}
			 DataToFile(data,username,"login","screen");
			 DataToFile(data1,username,"login","client");
			request.getRequestDispatcher("/menu.jsp").forward(request,
					response);
		}  else {

			request.setAttribute("message", "用户名或密码不正确！");
			request.getRequestDispatcher("/loginCollect.jsp").forward(request,
					response);
		}
		
	}
	
	private void miaoshaTest(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setCharacterEncoding("utf-8");

		String data=request.getParameter("StrData");
		String data1=request.getParameter("StrData2");
/*		System.out.println(data);*/
		String count=null;		
			HttpSession session = request.getSession();
			int miaoshaNum=(int) session.getAttribute("miaoshaNum");
			String registerName=(String)session.getAttribute("registerName");
			if(miaoshaNum!=0){
				session.setAttribute("miaoshaNum", miaoshaNum-1);
			}
			 DataToFile(data,registerName,"miaosha","screen");
			 DataToFile(data1,registerName,"miaosha","client");
			request.getRequestDispatcher("/menu.jsp").forward(request,
					response);
		 
		
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
