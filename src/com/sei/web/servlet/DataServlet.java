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
 * Servlet implementation class DataServlet
 */

//����ͳ����Ϣҳ��
@WebServlet("/DataServlet")
public class DataServlet extends HttpServlet {
	FileWriter fw = null;
	FileReader fr = null;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		doPost(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		
//		String StringData1="";
		String StringData="";
	    String StrData=request.getParameter("StrData");
	    String StrData1=request.getParameter("StrData2");
	    String registerName=(String) request.getSession().getAttribute("registerName");
	    
	    
		String username = request.getParameter("username");
		StringData+="username:  "+username+"\n";
		String studyNum = request.getParameter("studyNum");
		StringData+="studyNum:  "+studyNum+"\n";
		String sex = request.getParameter("sex");
		StringData+="sex:  "+sex+"\n";		
		String age = request.getParameter("age");
		StringData+="age:  "+age+"\n";	
		String email = request.getParameter("email");
		StringData+="email address:  "+email+"\n";	
		String telNum = request.getParameter("telNum");
		StringData+="telephone number:  "+telNum+"\n";			
		String qqNum = request.getParameter("qqNum");
		StringData+="qq number:  "+qqNum+"\n";	
		String address = request.getParameter("address");
		StringData+="home address:  "+address+"\n";	
//		String city = request.getParameter("city");
//		System.out.println(city);
		String shortSight = request.getParameter("shortSight");
		if(shortSight!=null){StringData+="shortSight or not:  "+shortSight+"\n";}		
		String hand = request.getParameter("hand");
		StringData+="hand always in use:  "+hand+"\n";			
		String CStime = request.getParameter("CStime");
		if(CStime!=null){StringData+="time of first use of computer:  "+CStime+"\n";}	
		String play = request.getParameter("play");
		if(play!=null){StringData+="play computer game or not:  "+play+"\n";}		
		String miaosha = request.getParameter("miaosha");
		if(miaosha!=null){StringData+="participate in a miaosha activity:  "+miaosha+"\n";}
		StringData+="\n";
		
		String s=StringData+StrData;
		String s1=StringData+StrData1;
		
		DataToFile(s,registerName,"screen");
		DataToFile(s1,registerName,"client");		
		request.getRequestDispatcher("/menu.jsp").forward(request, response);
		
		
//		System.out.println(username);
//		System.out.println(studyNum);
//		System.out.println(sex);
//		System.out.println(age);
//		System.out.println(email);
//		System.out.println(telNum);
//		System.out.println(qqNum);
//		System.out.println(request.getParameter("province"));
//		System.out.println(request.getParameter("city"));
//		System.out.println(shortSight);
//		System.out.println(CStime);
//		System.out.println(play);
//		System.out.println(miaosha);
//		System.out.println(str);

		}
	public void DataToFile(String s,String name,String type) throws IOException{
		String path=null;
		File filePath;
		
		path = "D:\\seimouseweb3\\" + name;
			filePath = new File(path);
			if (!filePath.exists()) {
				filePath.mkdirs();
			}
			File files = new File( path + "/" + name +"_"+type+ "_basicData.txt");	
			if (!files.exists()) {
	   			  files.createNewFile();
	   		  }
			FileWriter writer = new FileWriter(path + "/" + name +"_"+type+  "_basicData.txt", true);// ׷��
			writer.write(s);
			writer.close();
		
	}
		
	
}
