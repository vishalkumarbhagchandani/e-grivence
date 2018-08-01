<!doctype html>
<html lang="en">
 <head>

 <style>
*{
margin:0;
padding:0;
}
body,html{
height:100%;
width:100%;
}
body{
background-image:url("a3.jpg");
background-size:cover;
background-image: rgba(255,255,255,1.5);

background-position:center;
}
.heading{
width:600px;
height:300px;
margin:auto;
top:0px;
left:0px;
right:20px;
bottom:0px;
position:absoloute;
}
.title1{
text-align:center;
font-size:30pt;
margin:15px;
display:block;
color:#0000CD;
padding-left:80px;
font-family: big john;
padding-top:40px;
}
.title2{
text-align:center
color:white;
font-family:serif;
font-size:16pt;
display:block;
padding-left:250px;
margin:15px;
}
.register{
margin:50px,bold;
height:50px;
width:180px;
font-weight:bold;
border: 3px solid red;
border-radius:5px;
background-color: rgba(255,255,255,0);
font-family:sans-serif;
color:black;
font-size:16pt;
text-align:center;
margin-top: 10px;
transition: background-color 1000ms, color 1000ms ;
}
.register:hover{
	background-color:rgba(255,255,255,1);
	color: #222;

   transition: background-color 1000ms, color 1000ms ;
   text-transform:uppercase;
	cursor:pointer;
}
.registerLink{
    text-decoration: none;
    display:block;
    padding:10px;
    color:white;
    transition: color 1000ms;
}

.registerLink:hover{
    color:black;
}


/* MODAL */

.modal_container{
    width:50%;
    height:50%;
    pointer-events: none;
    opacity: 0;
    position:fixed;
    transition:all 500ms ease;
}

.modal_container:target{
    opacity:1;
    pointer-events: auto;
}

.modal_container > div{
    transform: translate(0px, -50px);
	transition: all 500ms ease;
}

.modal_container:target > div{
    transform: translate(0px, 0px);
}


.modal{
    width:350px;
    height:350px;
    margin:auto;
    position: absolute;
    top:0px; bottom:0px;
    right:0px; left:0px;
    background:black;
    border:2px solid #222;
    padding:40px;
    box-shadow: 0px 0px 50px 5px black;
}

.modal_heading{
    box-sizing: border-box;
    width:100%;
    display:block;
    height:60px;
    margin-bottom:30px;
    color:yellow;
    padding:10px;
    text-align: center;
    font-size:20pt;
    font-family: big john;
    border-bottom: 2px solid #fefefe;
}

input{
    margin-bottom: 15px;
    padding:10px;
    width:100%;
    box-sizing: border-box;
    border-radius: 5px;
    height:50px;
    border:0px;
    font-family: georgia;
    font-size: 11pt;
    text-align: center;
}

.btnRegister{
    background:red;
    color:white;
    font-size:15pt;
    margin-top:10px;
}
.btnRegister:hover{
    background:#b80000;
}
.close{
    color:white;
    position: absolute;
    border:2px solid #333;
    padding:7px 9px 11px 9px;
    font-family: big john;
    background:black;
    text-decoration: none;
    top:-20px;
    right:-20px;
    border-radius: 50%;
    transition: background 500ms;
}

.close:hover{
    background:#444;
    cursor:pointer;
}

.signin{
    color:white;
    display:inline-block;
    margin-top:15px;
    text-align: left;
    float:left;
    text-decoration: none;
    font-size: 13pt;
}
</style>
  </head>
 <body >
 <div class=heading align=center>
	<br><br><br>
	<span  class=title1> Nri Institute of Technology</span>
	<span class=title2 style="color:black;font-family:roboto"> <i>Learn </i> &nbsp&nbsp<i>Enhance </i> &nbsp&nbsp<i>inspire </i></span>
	<button class=register align="center" ><a href="#modal" class="registerLink">Action</a></button>
 
  <div class="modal_container" id="modal">
            <div class="modal">
                <a href="#" class="close">X</a>

                <form >
                    <button class="register">
                	<a href="samissues.jsp" class="registerLink">solved issues</a>
					</button><br>
                <button class="register">
                	<a href="ins.html" class="registerLink">Insert User</a>
            	</button><br>
            	<button class="register">
                <a href="del.html" class="registerLink">Delete User</a>	
				</button><br>
				<button class="register">
                <a href="upd.html" class="registerLink">Update User</a>
            	</button><br>
            	<button class="register" style="word-wrap: break-word;">
                	<a href="pendingissues.html" class="registerLink">Unsolved Issues</a>
            	</button><br>
				</div>
			</div>
	</div>  
 </body>
</html>
