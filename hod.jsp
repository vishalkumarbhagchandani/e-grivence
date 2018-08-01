<!doctype html>
<html lang="en">
 <head>
	<style>
	body{
		background-image:url(hod.jpg);
        background-size: cover;
		background-position:auto;
		font-family:sans-serif;
		margin:0;
		background-repeat:no-repeat;
		float:absolute;

		}
		.input-group select,button,input {
height: 30px;
  width: 80%;
    padding: 5px 10px;
  font-size: 16px;
  border-radius: 5px;
  border: 1px solid gray;

}

.input-group {
  margin: 10px 0px 10px 0px;
 
}

		.login{
		width:320px;
		height:420px;
		background:transparent;
		color:#fff;
		top:50%;
		left:50%;
		position:absolute;
		 transform:translate(-50%,-50%);
		 box-sizing:border-box;
		 box-shadow:0 10px 20px rgba(0,0,0,0.5);
		 transition:0.5s;
		 
		 }
		.avatar{
		width:100px;
		height:100px;
		border-radius:50%;
		position:absolute;
		top:-50px;
		left:120px;
		}
	</style>

  <title>Hod Login</title>
 </head>
 <body align=center>
 <div class=login>
 <img src=logo.png class=avatar><br><br>
 <br>
  <form  method="post" action="hodlogin.jsp" >
  <h1> Login Here</h1>
  <DIV CLASS="input-group">
  <select name="branch">
<option> Choose</option>
  
  <option> CSE HOD</option>
  <option> IT HOD</option>
  <option> ECE HOD</option>
  <option> EEE HOD</option>
  <option> CIVIL HOD</option>
  <option> MECH HOD</option>
  </SELECT><br> <br>
  <input type="text" name="id" placeholder="Enter Your Login"> <br><br>
    <input type="text" name="pswd" placeholder="Enter Your Password" > <br><br>
 <input type="submit" name="submit" value="login">
 </div>
 </DIV>
  </form>
 </body>
</html>
