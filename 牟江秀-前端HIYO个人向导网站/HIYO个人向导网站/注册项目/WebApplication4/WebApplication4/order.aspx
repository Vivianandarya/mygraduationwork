<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="WebApplication4.order" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>我的订单</title>
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
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ddid" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ddid" HeaderText="ddid" ReadOnly="True" 
                    SortExpression="ddid" />
                <asp:BoundField DataField="date" HeaderText="date" 
                    SortExpression="date" />
                <asp:BoundField DataField="startdate" HeaderText="startdate" 
                    SortExpression="startdate" />
                <asp:BoundField DataField="enddate" HeaderText="enddate" 
                    SortExpression="enddate" />
                <asp:BoundField DataField="peoplenumber" HeaderText="peoplenumber" 
                    SortExpression="peoplenumber" />
                <asp:BoundField DataField="daynumber" HeaderText="daynumber" 
                    SortExpression="daynumber" />
                <asp:BoundField DataField="money" HeaderText="money" 
                    SortExpression="money" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hiyoConnectionString %>" 
            DeleteCommand="DELETE FROM [order] WHERE [ddid] = @ddid" 
            InsertCommand="INSERT INTO [order] ([ddid], [date], [startdate], [enddate], [peoplenumber], [daynumber], [money]) VALUES (@ddid, @date, @startdate, @enddate, @peoplenumber, @daynumber, @money)" 
            SelectCommand="SELECT * FROM [order]" 
            
            UpdateCommand="UPDATE [order] SET [date] = @date, [startdate] = @startdate, [enddate] = @enddate, [peoplenumber] = @peoplenumber, [daynumber] = @daynumber, [money] = @money WHERE [ddid] = @ddid">
            <DeleteParameters>
                <asp:Parameter Name="ddid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ddid" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="startdate" DbType="Date" />
                <asp:Parameter Name="enddate" DbType="Date" />
                <asp:Parameter Name="peoplenumber" Type="Int32" />
                <asp:Parameter Name="daynumber" Type="Int32" />
                <asp:Parameter Name="money" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="startdate" DbType="Date" />
                <asp:Parameter Name="enddate" DbType="Date" />
                <asp:Parameter Name="peoplenumber" Type="Int32" />
                <asp:Parameter Name="daynumber" Type="Int32" />
                <asp:Parameter Name="money" Type="Decimal" />
                <asp:Parameter Name="ddid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hiyoConnectionString %>" 
            DeleteCommand="DELETE FROM [order] WHERE [ddid] = @ddid" 
            InsertCommand="INSERT INTO [order] ([ddid], [date], [startdate], [enddate], [peoplenumber], [daynumber], [money]) VALUES (@ddid, @date, @startdate, @enddate, @peoplenumber, @daynumber, @money)" 
            SelectCommand="SELECT * FROM [order]" 
            
            UpdateCommand="UPDATE [order] SET [date] = @date, [startdate] = @startdate, [enddate] = @enddate, [peoplenumber] = @peoplenumber, [daynumber] = @daynumber, [money] = @money WHERE [ddid] = @ddid">
            <DeleteParameters>
                <asp:Parameter Name="ddid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ddid" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="startdate" DbType="Date" />
                <asp:Parameter Name="enddate" DbType="Date" />
                <asp:Parameter Name="peoplenumber" Type="Int32" />
                <asp:Parameter Name="daynumber" Type="Int32" />
                <asp:Parameter Name="money" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="startdate" DbType="Date" />
                <asp:Parameter Name="enddate" DbType="Date" />
                <asp:Parameter Name="peoplenumber" Type="Int32" />
                <asp:Parameter Name="daynumber" Type="Int32" />
                <asp:Parameter Name="money" Type="Decimal" />
                <asp:Parameter Name="ddid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="ddid" 
            DataSourceID="SqlDataSource2">
            <EditItemTemplate>
                订单编号:
                <asp:Label ID="ddidLabel1" runat="server" 
                    Text='<%# Eval("ddid") %>' />
                <br />
                订单日期:
                <asp:TextBox ID="dateTextBox" runat="server" 
                    Text='<%# Bind("date") %>' />
                <br />
                开始日期:
                <asp:TextBox ID="startdateTextBox" runat="server" 
                    Text='<%# Bind("startdate") %>' />
                <br />
                结束日期:
                <asp:TextBox ID="enddateTextBox" runat="server" 
                    Text='<%# Bind("enddate") %>' />
                <br />
                人数:
                <asp:TextBox ID="peoplenumberTextBox" runat="server" 
                    Text='<%# Bind("peoplenumber") %>' />
                <br />
                天数:
                <asp:TextBox ID="daynumberTextBox" runat="server" 
                    Text='<%# Bind("daynumber") %>' />
                <br />
                价格:
                <asp:TextBox ID="moneyTextBox" runat="server" 
                    Text='<%# Bind("money") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ddid:
                <asp:TextBox ID="ddidTextBox" runat="server" 
                    Text='<%# Bind("ddid") %>' />
                <br />
                date:
                <asp:TextBox ID="dateTextBox" runat="server" 
                    Text='<%# Bind("date") %>' />
                <br />
                startdate:
                <asp:TextBox ID="startdateTextBox" runat="server" 
                    Text='<%# Bind("startdate") %>' />
                <br />
                enddate:
                <asp:TextBox ID="enddateTextBox" runat="server" 
                    Text='<%# Bind("enddate") %>' />
                <br />
                peoplenumber:
                <asp:TextBox ID="peoplenumberTextBox" runat="server" 
                    Text='<%# Bind("peoplenumber") %>' />
                <br />
                daynumber:
                <asp:TextBox ID="daynumberTextBox" runat="server" 
                    Text='<%# Bind("daynumber") %>' />
                <br />
                money:
                <asp:TextBox ID="moneyTextBox" runat="server" 
                    Text='<%# Bind("money") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                订单编号:
                <asp:Label ID="ddidLabel" runat="server" Text='<%# Eval("ddid") %>' />
                <br />
                订单日期:
                <asp:Label ID="dateLabel" runat="server" 
                    Text='<%# Bind("date") %>' />
                <br />
                开始日期:
                <asp:Label ID="startdateLabel" runat="server" 
                    Text='<%# Bind("startdate") %>' />
                <br />
                结束日期:
                <asp:Label ID="enddateLabel" runat="server" 
                    Text='<%# Bind("enddate") %>' />
                <br />
                人数:
                <asp:Label ID="peoplenumberLabel" runat="server" 
                    Text='<%# Bind("peoplenumber") %>' />
                <br />
                天数:
                <asp:Label ID="daynumberLabel" runat="server" Text='<%# Bind("daynumber") %>' />
                <br />
                价格:
                <asp:Label ID="moneyLabel" runat="server" 
                    Text='<%# Bind("money") %>' />
                <br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="修改" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="删除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="下单" />
            </ItemTemplate>
        </asp:FormView>
        <br />
    </div></center>
    </form>
</body>
</html>
