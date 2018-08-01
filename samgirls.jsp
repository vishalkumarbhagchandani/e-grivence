<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*"%>

<%
String idd="1234";
String roll=request.getParameter("rno");
String namee=request.getParameter("sname");
String pswdd=request.getParameter("pswd");
String branchh=request.getParameter("branch");
String yearr=request.getParameter("year");
String complaintt=request.getParameter("complaint");
//String status="unsolved";

String url="jdbc:oracle:thin:@localhost:1521:xe";
Connection con=null;
PreparedStatement stmt=null;
int regstatus=0;
java.util.Date d=new java.util.Date();
String s=d.toString();


try{
	
Class.forName("oracle.jdbc.driver.OracleDriver");
con=DriverManager.getConnection(url,"system","admin");

stmt=con.prepareStatement("insert into girlissue values(?,?,?,?,?,?,?,?)");  

stmt.setString(1,idd);
stmt.setString(2,roll);

stmt.setString(3,namee);
stmt.setString(4,pswdd);


stmt.setString(5,branchh);


stmt.setString(6,yearr);

stmt.setString(7,complaintt);


stmt.setString(8,s);
//stmt.setString(9,status);

regstatus=stmt.executeUpdate();


if(regstatus!=0)
	
			out.println("Sucessfully registered");
			//out.println("<button> <a href=""> </a> click here to solve issue</button>");
			
	else
			out.println("unable to register");

}catch(Exception e)
	{
					out.println("unable to connect to database");

					out.println(e);
					
					e.printStackTrace();;
				}


%>
