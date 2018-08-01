<%@ page import ="java.sql.*"%>
<html>
<head>
<style>
.button {
    background-color: #4caf50; /* green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

.button:hover{

text-decoration:none;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}


.button2 {background-color: #008cba;} /* blue */
.button3 {background-color: #f44336;} /* red */ 
.button4 {background-color: #e7e7e7; color: black;} /* gray */ 
.button5 {background-color: #555555;} /* black */
</style>
</head>
<body>

<form name="admin" method="post" action="#">
<input type ="text" name="id" placeholder="enter id to insert">
<input type ="text" name="pswd" placeholder="enter pswd to insert">


<button class="button" ><a href="samissues.jsp">solved issues</a></button>
<button class="button button2"><a href="saminsert.jsp">insert</a></button>
<button class="button button3"><a href="samdelete.jsp">delete</a></button>
<button class="button button4"><a href="samupdate.jsp">update</a></button>
<button class="button button5"><a href="samissues.jsp">pending issues</a></button>
</form>
</body>
</html>


<%
//String branchh=request.getParameter("branch");
String idd=request.getParameter("id");
String passd=request.getParameter("pswd");


String url="jdbc:oracle:thin:@localhost:1521:xe";
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=null;
PreparedStatement stmt=null;
PreparedStatement stmt1=null;
ResultSet rs=null;

try
{
con=DriverManager.getConnection(url,"system","admin");
stmt=con.prepareStatement("select * from pass where id=? or password=?");

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
	while(rs.next())
	 out.println("<script>document.writeln('welcome')</script>");
//+rs.getString(1)//
		stmt1=con.prepareStatement("insert into pass values(?,?)");
	ResultSet rs1=stmt1.executeQuery();
	if(!rs1.isBeforeFirst())
		{
 out.println("<script>alert('vishal Wrong Infomation')</script>");    

		}
		else
		{	
								
		Out.println("executed");
		<!doctype html>
			
/*out.print("<table border='1' cellpadding='2' width='100%'>");  
out.print("<tr><th>sno</th><th>rollno</th><th>sname</th><th>pswd</th><th>branch</th><th>block</th><th>floor</th><th>appliance</th><th>complaint</th><th>date</th></tr>");
				while(rs1.next())
				{

				out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>");
				}
				//break;
		*/	
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