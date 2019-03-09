<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication4.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HIYO~</title>
    <style type="text/css"> 
a {
    text-decoration: none
   }
    
ul{			
	width:113%;		
	padding:0;			
	margin:1px;			
	text-align: center;		
	list-style-type:none;
            height: 18px;
        }
a{		
	width:7em;		
	text-decoration:none;		
	color:white;		
	background-color:#aaaadd;		
	padding:0.2em 0.6em;		
	border-right:1px solid white;		
}
a:hover {background-color:#ff3300}
		
li {display:inline}
 
#aa{	
	width: 100%;	
	margin:0px auto;	
	background:rgba(00,00,00,0);	
	line-height:15px;
}
#dh1
{
    width: 20%;	
	margin-left:6.7%;	
	line-height:5px;
    float:left;
            height: 19px;
            margin-right: auto;
            margin-top: 0px;
            margin-bottom: 0px;
        }
#dh2
{
    width: 20%;	
	margin-right:6.7%;	
	line-height:5px;
    float:right;
            height: 18px;
            margin-left: auto;
            margin-top: 0px;
            margin-bottom: 0px;
        }

#bgpicture
{
    width:70%;
    height:50px;
    margin-left:10%;
    }
#b0{	
	width: 78%;	
		
	
	line-height:10px;    
	background-color:#cdcecf;    
	height:100px;    
	   
	padding:5px;	       
}

#b1{	
width: 35%;	
padding-top: 10px;	
padding-bottom: 10px;	
background-color: #eeeeee;	
margin-left: 2%;	
margin-top: 3%;	
float: left;
}			
    

    </style>
</head>
<body style="height: 159px;">
    <form id="form1" runat="server">
     <div>		
<center >		
<img src ="pictures/20180704-104711.png"  style="height: 48px; width: 84px"/>
<h1 style="text-align: center;color: #eeaa00;font-family:Lucida Calligraphy;font-size: 37px"> 			
<font size="3px"; color="#84857c" >●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;&nbsp;
</font>HIYO · 开启属于你的远方<font size="3px"; color="#84857c">&nbsp;&nbsp;&nbsp; ●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp; 
    ●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;</font></h1>
    
 

 		</center>
 	
</div>   
    <div id="dh1">
    <ul>
<li></li>
        <li><a href="index.aspx" id="current">首 页</a></li>&nbsp;&nbsp;
    <li><a href="research.aspx">选择你喜欢的城市 </a></li>
    
    
</ul>
    </div>

    <div id="dh2">
    <ul>
    <li><a href="WebForm1.aspx">注册 </a></li>&nbsp;&nbsp;
    <li><a href="WebForm2.aspx">| 登录</a></li>
</ul>

    </div>
    
    </form>
    
    <center>
    <hr style="margin-bottom: 0px" />
    <br />
    <br />

    <div>
    <img src="pictures/bj2.jpg" />
    </div></center>
    <br />
    <center>
    <div id="b0">
        <br />
        <br />
        <br />
        <br />
    客服热线:国内400-872-8336

海外+86-571-88669710

接听时间：9:00-22:00（北京时间）
    </div></center>
    
</body>
</html>
