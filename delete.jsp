<%@ page import="java.sql.*"%>
<%
String name=request.getParameter("usna");
String pass=request.getParameter("uspass");


Class.forName("oracle.jdbc.driver.OracleDriver");
String url="jdbc:oracle:thin:@localhost:1521:xe";
Connection con=null;
PreparedStatement stmt=null;
PreparedStatement stmt1=null;
ResultSet rs1=null;
int status=0;
try
{
con=DriverManager.getConnection(url,"system","admin");
stmt=con.prepareStatement("delete from vi where name=? and pass=?");
stmt.setString(1,name);
stmt.setString(2,pass);

status=stmt.executeUpdate();

if(status!=0)
	{
	out.println("<script>alert('sucess')</script>");
	stmt1=con.prepareStatement("select * from vi");
	rs1=stmt1.executeQuery();

			out.print("<table border='1' cellpadding='2' width='100%'>");  
			out.print("<tr><th>name</th><th>pass</th></tr>");

		while(rs1.next())
			{
			out.print("<tr><td>"+rs1.getString(1)+"</td><td>"+rs1.getString(2)+"</td></tr>");
			
			}
			out.print("</table>");
	}
	else
	{
out.println(" not success");
	}

}catch(Exception e)
{
	out.println(e);
}
%>
