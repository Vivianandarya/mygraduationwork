<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="research.aspx.cs" Inherits="WebApplication4.research" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>选择你喜欢的城市</title>
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
<font size=3px; color="#84857c" >●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</font>HIYO · 选择你喜欢的城市<font size=3px; color="#84857c">&nbsp;&nbsp;&nbsp; ●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></h1> 		
<p style="font-family:Ostrich Sans">m&nbsp;&nbsp;o&nbsp;&nbsp;u&nbsp;&nbsp;n&nbsp;&nbsp;t&nbsp;&nbsp;a&nbsp;&nbsp;i&nbsp;&nbsp;n</p> 		</center> 	
</div>   
<center>        
    <div >
    
        <br />
        <br />
        <br />
        <br />
    
        城市：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    
        <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" 
            style="height: 21px" />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hiyoConnectionString %>" 
            SelectCommand="SELECT * FROM [fwinformation] WHERE ([city] LIKE '%' + @city + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="city" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="fwid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="fwid" HeaderText="fwid" ReadOnly="True" 
                    SortExpression="fwid" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="luxian" HeaderText="luxian" 
                    SortExpression="luxian" />
                <asp:BoundField DataField="money" HeaderText="money" SortExpression="money" />
                <asp:BoundField DataField="information" HeaderText="information" 
                    SortExpression="information" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="xdid" HeaderText="xdid" SortExpression="xdid" />
            </Columns>
        </asp:GridView>
       
        <asp:Label ID="Label1" runat="server" Text="  "></asp:Label>
   
    <p>
       <a href="order.aspx">下单</a>
    </p>
     </div></center>
    </form>
</body>
</html>
