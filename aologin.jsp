<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*"%>

<%
String id=request.getParameter("id");
String pswd=request.getParameter("pswd");

String url="jdbc:oracle:thin:@localhost:1521:xe";
Connection con=null;
Statement stmt=null;
int regstatus=0;

try{
	
Class.forName("oracle.jdbc.driver.OracleDriver");

con=DriverManager.getConnection(url,"system","admin");
ResultSet rs=stmt.executeQuery("select * from pswd");
while(rs.next())
	{

	if(rs.getString(1)==id)
		{
		if(rs.getString(2)==pswd)
			{
				ResultSet rs1=stmt.executeQuery("select * from studentform");
			
				while(rs1.next())
				{

				out.println(rs1.getString(1)+"\t"+rs1.getString(2)+"\t"+rs1.getString(3)+"\t"+rs1.getString(4));
			
				}
				break;
				
			}
		}

	}
	out.println("executed");

regstatus=stmt.executeUpdate();

if(regstatus!=0)
	
			out.println("Sucessfully registered");
	
			
	else
			out.println("unable to register");

}
catch(Exception e)
	{
					out.println("unable to connect to database");

					out.println(e);
					
					e.printStackTrace();;
				}


%>
