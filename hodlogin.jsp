<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*"%>

<%
String branch=request.getParameter("branch");
String id=request.getParameter("id");
String pswd=request.getParameter("pswd");

String url="jdbc:oracle:thin:@localhost:1521:xe";
Connection con=null;
PreparedStatement stmt=null;
//int regstatus=0;

try{
	
Class.forName("oracle.jdbc.driver.OracleDriver");

con=DriverManager.getConnection(url,"system","admin");
stmt=con.prepareStatement("select * from pswd");
ResultSet rs=stmt.executeQuery();//PSWD TABLE IN WHICH EVERY LOGIN IS REGISTERD
while(rs.next())
	{

	if((rs.getString(2)==id)&&(rs.getString(3)==pswd))
		{
		
				out.println("loggged in");
				ResultSet rs1=stmt.executeQuery("select * from studentform where branch='"?"'");
			
				while(rs1.next())
				{

				out.println(rs1.getString(1)+"\t"+rs1.getString(2)+"\t"+rs1.getString(3)+"\t"+rs1.getString(4)+"\t"+rs1.getString(5)+"\t"+rs1.getString(6)+"\t"+rs1.getString(7)+"\t"+rs1.getString(8)+"\t"+rs1.getString(9)+"\t"+rs1.getString(10));
			
				}
				break;
				
			
		}
		else
		{
			out.println("loggged out");
			break;
		}

	}
	/*out.println("executed");

regstatus=stmt.executeUpdate();

if(regstatus!=0)
	
			out.println("Sucessfully registered");
	
			
	else
			out.println("unable to register");

}*/
}catch(Exception e)
	{
					out.println("unable to connect to database");

					out.println(e);
					
					e.printStackTrace();;
				}


%>