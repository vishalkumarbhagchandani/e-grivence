<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*"%>

<%
String id=request.getParameter("id");
String pswd=request.getParameter("pswd");

String url="jdbc:oracle:thin:@localhost:1521:xe";
Connection con=null;
PreparedStatement stmt=null;
int regstatus=0;


try{
	
Class.forName("oracle.jdbc.driver.OracleDriver");

con=DriverManager.getConnection(url,"system","admin");

stmt=con.prepareStatement("select * from pass where id=? and password=?");  

stmt.setString(1,id);
stmt.setString(2,pswd);
regstatus=stmt.executeUpdate();

if(regstatus!=0)
	
			out.println("Sucessfully registered");
	
			
	else
			out.println("unable to register");

}catch(Exception e)
	{
					out.println("unable to connect to database");

					out.println(e);
					
					e.printStackTrace();;
				}


%>
