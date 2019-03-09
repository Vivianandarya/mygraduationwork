<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>HIYO注册</title>
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
    <center style="height: 165px; width: 1143px">		
<img src ="pictures/20180704-104711.png" style="height: 42px; width: 65px">		
<h1 style="text-align: center;color: #eeaa00;font-family:Lucida Calligraphy;font-size: 37px"> 			
<font size=3px; color="#84857c" >●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;&nbsp;
</font>HIYO · 用户注册<font size=3px; color="#84857c">&nbsp;&nbsp;&nbsp; ●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;&nbsp;&nbsp;</font></h1> 		
<p style="font-family:Ostrich Sans">m&nbsp;&nbsp;o&nbsp;&nbsp;u&nbsp;&nbsp;n&nbsp;&nbsp;t&nbsp;&nbsp;a&nbsp;&nbsp;i&nbsp;&nbsp;n</p> 		</center>
    </div>
    <br />
    <div id="aa">
    <asp:Label ID="Label3" runat="server" Text="HIYO账号"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="xdid" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="xdid" ErrorMessage="账号不能为空"></asp:RequiredFieldValidator>
        <br />
        <br />
    <p>
        姓名&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="name" ErrorMessage="姓名不能为空"></asp:RequiredFieldValidator>
    </p>
        <p>
            &nbsp;</p>
    <p>
        性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="sex" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="sex" DataValueField="sex">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hiyoConnectionString %>" 
            SelectCommand="SELECT * FROM [性别]"></asp:SqlDataSource>
    </p>
        <br />
    <asp:Label ID="Label4" runat="server" Text="手机号"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="pnumber" runat="server"></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ControlToValidate="pnumber" ErrorMessage="手机号必须填唷~"></asp:RequiredFieldValidator>
    
        <br />
        <br />
    
    <br />
    <br />
        身份证号&nbsp;&nbsp; <asp:TextBox ID="id" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="id" ErrorMessage="请重新输入~" 
        ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
        <br />
        <br />
    <br />
    <br />
    
        选择城市&nbsp;&nbsp; <asp:TextBox ID="city" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ControlToValidate="city" ErrorMessage="请输入城市"></asp:RequiredFieldValidator>
        <br />
        <br />
    <p>
        设置密码&nbsp;&nbsp; <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="password" ErrorMessage="必须输入密码"></asp:RequiredFieldValidator>
    </p>
        <p>
            &nbsp;</p>
        重复密码&nbsp;&nbsp; <asp:TextBox ID="upassword" runat="server" 
        TextMode="Password"></asp:TextBox>
    <asp:CompareValidator
        ID="CompareValidator1" runat="server" ErrorMessage="请重新输入一致的密码" 
        ControlToCompare="password" ControlToValidate="upassword"></asp:CompareValidator>
        <br />
        <br />
        <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="向导注册" onclick="Button1_Click" 
            Height="36px" />
    <asp:Label ID="Label6" runat="server"></asp:Label>
    &nbsp;
        <asp:Button ID="Button2" runat="server" Text="游客注册" onclick="Button2_Click" 
            Height="36px" />
    <asp:Label ID="Label7" runat="server"></asp:Label>
    </div></form>
    
</body>
</html>
