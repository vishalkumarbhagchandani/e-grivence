<%@ page import="java.sql.*" %> 
<%@ page import="java.util.*"%>

<%
//String branchh=request.getParameter("branch");
String idd=request.getParameter("id");
String pswdd=request.getParameter("pswd");

String url="jdbc:oracle:thin:@localhost:1521:xe";
Connection con=null;
PreparedStatement stmt=null;
PreparedStatement stmt1=null;
ResultSet rs1=null;
ResultSet rs=null;

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

	if(regstatus==0)
	{
			out.println("data not inserted");
	}
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
					stmt1=con.prepareStatement("select * from pass");
					rs1=stmt1.executeQuery();
			
								
						if(!rs1.isBeforeFirst())
							{
								 out.println("no data found");   
							
							}
							else
								{	
														
								
									out.print("<table border='1' cellpadding='2' width='100%'>");  
									out.print("<tr><th>rollno</th><th>sname</th></tr>");
													while(rs1.next())
													{

														out.print("<tr><td>"+rs1.getString(1)+"</td><td>"+rs1.getString(2)+"</td></tr>");
													}
				//break;
			
								}

				  	

	}
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
