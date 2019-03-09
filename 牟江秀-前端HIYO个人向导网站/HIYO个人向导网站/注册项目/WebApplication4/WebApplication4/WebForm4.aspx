<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebApplication4.WebForm4" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>HIYO——发布服务信息</title>
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
</font>HIYO · 发布服务信息<font size=3px; color="#84857c">&nbsp;&nbsp;&nbsp; ●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;&nbsp;&nbsp;</font></h1> 		
<p style="font-family:Ostrich Sans">m&nbsp;&nbsp;o&nbsp;&nbsp;u&nbsp;&nbsp;n&nbsp;&nbsp;t&nbsp;&nbsp;a&nbsp;&nbsp;i&nbsp;&nbsp;n</p> 		</center> 	
</div>           
        <div>
            <br />

 <div id="aa">          
 <asp:Label ID="Label1" runat="server" Text="向导账号" ForeColor="#006699"></asp:Label>
               
                &nbsp;&nbsp;&nbsp;
               
                <asp:TextBox ID="xdid" runat="server"></asp:TextBox>
                <br />
                <br />
                <br/> <asp:Label ID="Label2" runat="server" Text="选择城市" 
         ForeColor="#006699"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="city" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
               
                <asp:Label ID="Label3" runat="server" Text="服务号码" 
         ForeColor="#006699"></asp:Label>
               
                &nbsp;&nbsp;&nbsp;
               
                <asp:TextBox ID="fwid" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
              
                <asp:Label ID="Label4" runat="server" Text="输入路线" 
         ForeColor="#006699"></asp:Label>
               
                &nbsp;&nbsp;&nbsp;
               
                <asp:TextBox ID="luxian" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
               
                <asp:Label ID="Label5" runat="server" Text="向导时间" 
         ForeColor="#006699"></asp:Label>
                
                &nbsp;&nbsp;&nbsp;
                
                <asp:TextBox ID="date" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
              
                <asp:Label ID="Label6" runat="server" Text="旅行价格" 
         ForeColor="#006699"></asp:Label>
             
                &nbsp;&nbsp;&nbsp;
             
                <asp:TextBox ID="money" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />

                <br />

                <asp:Label ID="Label7" runat="server" Text="服务描述" 
         ForeColor="#336699"></asp:Label>
                <br />
                <br />
               
                <asp:TextBox ID="information" runat="server" TextMode="MultiLine" 
         Width="362px" Height="122px"></asp:TextBox>
                <br />

     <br />
     <br />

     <br />

          

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" 
         runat="server" OnClick="Button1_Click" Text="发布" 
                Width="87px" Height="49px" BackColor="#6699FF" ForeColor="White" />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label8" runat="server" Text="" Visible="true"></asp:Label>
                </div>
                <br />

                <br />

        </div>
       
        
       
       
       
        
       
    </form>
</body>
</html>

