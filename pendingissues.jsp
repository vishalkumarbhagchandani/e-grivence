<%@ page import ="java.sql.*"%>
<html>
<%
/*String branchh=request.getParameter("branch");
String idd=request.getParameter("id");
String passd=request.getParameter("pswd");

*/
String sss="unsolved";

String url="jdbc:oracle:thin:@localhost:1521:xe";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=null;
PreparedStatement stmt=null;
PreparedStatement stmt1=null;
ResultSet rs=null;

try
{
con=DriverManager.getConnection(url,"system","admin");
stmt=con.prepareStatement("select * from studentforr where status=?");
/*
stmt.setString(1,idd);
stmt.setString(2,passd);
*/

stmt.setString(1,sss);
rs=stmt.executeQuery();
	
					

									out.print("<table border='1' cellpadding='2' width='100%' style='border: 1px solid #ddd; text-align: left;padding: 15px;border-collapse: collapse;width: 100%;margin:1px;'>");  





			out.print("<br><br><br><tr><th>id</th><th>rollno</th><th>sname</th><th>pswd</th><th>block</th><th>floor</th><th>appliance</th><th>complaint</th><th>status</th><th>date</th><th>branch</th><th>Solved Date</th><th>category</th> </tr>");

while(rs.next())
			{

					out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(12)+"</td><td>"+rs.getString(13)+"</td></tr>");		
			}
	}	
/*
if(passd==null||passd.trim().equals(""))
{
	out.println("<p>please enter pass</p>");
}
else
	{
if(!rs.isBeforeFirst())
 out.println("<script>alert('Wrong Infomation')</script>");    
else
	while(rs.next())
	 out.println("<script>document.writeln('welcome')</script>");
//+rs.getString(1)//
		stmt1=con.prepareStatement("select * from studentform");
	ResultSet rs1=stmt1.executeQuery();
	if(!rs1.isBeforeFirst())
		{
 out.println("<script>alert('vishal Wrong Infomation')</script>");    
			out.println("welcomet oi nnn ");
		}
		else
		{	
								
				
*/			
				//break;
			
		/*}
	}
}*/

catch(Exception e)
{
out.println(e);
}
finally
{
	stmt.close();
	con.close();
}
%>
</html>