<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*"%>

<%
//String branchh=request.getParameter("branch");
String idd=request.getParameter("id");
String pswdd=request.getParameter("pswd");

String url="jdbc:oracle:thin:@localhost:1521:xe";
Connection con=null;
PreparedStatement stmt=null;
int regstatus=0;


try{
	
	out.println(" 1st comlete");
Class.forName("oracle.jdbc.driver.OracleDriver");
out.println(" 2nd comlete");
con=DriverManager.getConnection(url,"system","admin");

stmt=con.prepareStatement("insert into pass values(?,?)");  

stmt.setString(1,idd);
stmt.setString(2,pswdd);
regstatus=stmt.executeUpdate();


/*
java.util.Date d=new java.util.Date();
String s=d.toString();
stmt.setString(3,s);

stmt.setString(4,branchh);
regstatus=stmt.executeUpdate();
*/
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
