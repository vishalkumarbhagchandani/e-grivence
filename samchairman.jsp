<%@ page import ="java.sql.*"%>
<html>
<button> <a href="samissues.jsp">Solved</a></button>&nbsp&nbsp&nbsp
<button> <a href="pendingissues.jsp">unsolved</a></button>&nbsp&nbsp&nbsp

<button> <a href="ohome.html">Home</a></button>
<%
String branchh=request.getParameter("branch");
String idd=request.getParameter("id");
String passd=request.getParameter("pswd");


String url="jdbc:oracle:thin:@localhost:1521:xe";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=null;
PreparedStatement stmt=null;
PreparedStatement stmt1=null;
PreparedStatement stmt2=null;

ResultSet rs=null;
ResultSet rs1=null;

ResultSet rs2=null;
String s1=null;
String s2=null;

try
{
con=DriverManager.getConnection(url,"system","admin");
stmt=con.prepareStatement("select * from vi where name=? and pass=?");

stmt.setString(1,idd);
stmt.setString(2,passd);

rs=stmt.executeQuery();

if(passd==null||passd.trim().equals(""))
{
	out.println("<p>please enter pass</p>");
}
else
	{
		if(!rs.isBeforeFirst())
			out.println("<script>alert('Wrong Infomation')</script>");    
			else	
			{
					/*while(rs.next())
					{
						s1=rs.getString(2);
						s2=rs.getString(3);
					}
				   if(!(s1==idd)&&(s2==passd))
					{
						out.println("password not match");
					}
					else
					{*/

					//if(rs.getString(1)=="chairman")
					stmt1=con.prepareStatement("select * from studentforr");
					rs1=stmt1.executeQuery();
			
								
						if(!rs1.isBeforeFirst())
							{
								 out.println("no data found");    
							
							}
							else
								{	
														
								
									out.print("<table border='1' cellpadding='2' width='100%' style='border: 1px solid #ddd; text-align: left;padding: 15px;border-collapse: collapse;width: 100%;margin:1px;'>");  

			out.print("<br><br><br><tr><th>id</th><th>rollno</th><th>sname</th><th>pswd</th><th>block</th><th>floor</th><th>appliance</th><th>complaint</th><th>status</th><th>date</th><th>branch</th><th>Solved Date</th><th>category</th> </tr>");
													while(rs1.next())
			{

					out.print("<tr><td>"+rs1.getString(1)+"</td><td>"+rs1.getString(2)+"</td><td>"+rs1.getString(3)+"</td><td>"+rs1.getString(4)+"</td><td>"+rs1.getString(5)+"</td><td>"+rs1.getString(6)+"</td><td>"+rs1.getString(7)+"</td><td>"+rs1.getString(8)+"</td><td>"+rs1.getString(9)+"</td><td>"+rs1.getString(10)+"</td><td>"+rs1.getString(11)+"</td><td>"+rs1.getString(12)+"</td><td>"+rs1.getString(13)+"</td></tr>");		
			}
								}

				  	}
	}
}catch(Exception e)
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