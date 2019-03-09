<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HIYO登录</title>
     <style type="text/css">
    #aa
    {
width: 47%;	
padding-top: 10px;	
padding-bottom: 10px;	
background-color: #ffffff;	
margin-left: 35%;	
margin-top: 5%;
            height: 645px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div>
     <center>
    <center style="height: 165px; width: 1143px">		
<img src ="pictures/20180704-104711.png" style="height: 42px; width: 65px">		
<h1 style="text-align: center;color: #eeaa00;font-family:Lucida Calligraphy;font-size: 37px"> 			
<font size=3px; color="#84857c" >●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;&nbsp;
</font>HIYO · 用户登录<font size=3px; color="#84857c">&nbsp;&nbsp;&nbsp; ●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;&nbsp;&nbsp;</font></h1> 		
<p style="font-family:Ostrich Sans">m&nbsp;&nbsp;o&nbsp;&nbsp;u&nbsp;&nbsp;n&nbsp;&nbsp;t&nbsp;&nbsp;a&nbsp;&nbsp;i&nbsp;&nbsp;n</p> 		</center></center>
    </div>
    <div id="aa">
    
        <font size="5px">用户名：</font>&nbsp;&nbsp;&nbsp; 
        <asp:TextBox ID="username" runat="server" Height="25px" Width="170px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
         <font size="5px">密码：&nbsp;&nbsp;&nbsp; </font><asp:TextBox 
            ID="password" runat="server" TextMode="Password" Height="27px" 
            Width="171px"></asp:TextBox>
    
        <br />
        <br />
        <br />
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="yklog" runat="server" Text="游客登录" onclick="yklog_Click" 
            Height="44px" />
    
        &nbsp;
    
        <asp:Button ID="guidelog" runat="server" Text="向导登录" onclick="guidelog_Click" 
            Height="43px" />
    
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
