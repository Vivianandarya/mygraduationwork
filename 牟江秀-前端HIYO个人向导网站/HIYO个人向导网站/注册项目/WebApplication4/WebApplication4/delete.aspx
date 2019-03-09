<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="WebApplication4.delete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>管理服务信息</title>
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
</font>HIYO · 管理服务信息<font size=3px; color="#84857c">&nbsp;&nbsp;&nbsp; ●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;●&nbsp;&nbsp;&nbsp;&nbsp;</font></h1> 		
<p style="font-family:Ostrich Sans">m&nbsp;&nbsp;o&nbsp;&nbsp;u&nbsp;&nbsp;n&nbsp;&nbsp;t&nbsp;&nbsp;a&nbsp;&nbsp;i&nbsp;&nbsp;n</p> 		</center>
    </div>
    <div id="aa">
        <asp:TextBox ID="TextBox1" runat="server" Height="36px" Width="248px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="查询" Height="36px" Width="60px" />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="fwid" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="fwid" HeaderText="fwid" ReadOnly="True" 
                    SortExpression="fwid" />
                <asp:BoundField DataField="date" HeaderText="date" 
                    SortExpression="date" />
                <asp:BoundField DataField="luxian" HeaderText="luxian" 
                    SortExpression="luxian" />
                <asp:BoundField DataField="money" HeaderText="money" 
                    SortExpression="money" />
                <asp:BoundField DataField="information" HeaderText="information" 
                    SortExpression="information" />
                <asp:BoundField DataField="city" HeaderText="city" 
                    SortExpression="city" />
                <asp:BoundField DataField="xdid" HeaderText="xdid" 
                    SortExpression="xdid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hiyoConnectionString %>" 
            DeleteCommand="DELETE FROM [fwinformation] WHERE [fwid] = @fwid" 
            InsertCommand="INSERT INTO [fwinformation] ([fwid], [date], [luxian], [money], [information], [city], [xdid]) VALUES (@fwid, @date, @luxian, @money, @information, @city, @xdid)" 
            SelectCommand="SELECT * FROM [fwinformation] WHERE ([fwid] LIKE '%' + @fwid + '%')" 
            
            
            UpdateCommand="UPDATE [fwinformation] SET [date] = @date, [luxian] = @luxian, [money] = @money, [information] = @information, [city] = @city, [xdid] = @xdid WHERE [fwid] = @fwid">
            <DeleteParameters>
                <asp:Parameter Name="fwid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fwid" Type="String" />
                <asp:Parameter Name="date" DbType="Date" />
                <asp:Parameter Name="luxian" Type="String" />
                <asp:Parameter Name="money" Type="Decimal" />
                <asp:Parameter Name="information" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="xdid" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="fwid" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="date" DbType="Date" />
                <asp:Parameter Name="luxian" Type="String" />
                <asp:Parameter Name="money" Type="Decimal" />
                <asp:Parameter Name="information" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="xdid" Type="String" />
                <asp:Parameter Name="fwid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:hiyoConnectionString %>" 
            DeleteCommand="DELETE FROM [fwinformation] WHERE [fwid] = @fwid" 
            InsertCommand="INSERT INTO [fwinformation] ([fwid], [date], [luxian], [money], [information], [city], [xdid]) VALUES (@fwid, @date, @luxian, @money, @information, @city, @xdid)" 
            SelectCommand="SELECT * FROM [fwinformation] WHERE ([fwid] LIKE '%' + @fwid + '%')" 
            
            
            UpdateCommand="UPDATE [fwinformation] SET [date] = @date, [luxian] = @luxian, [money] = @money, [information] = @information, [city] = @city, [xdid] = @xdid WHERE [fwid] = @fwid">
            <DeleteParameters>
                <asp:Parameter Name="fwid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fwid" Type="String" />
                <asp:Parameter Name="date" DbType="Date" />
                <asp:Parameter Name="luxian" Type="String" />
                <asp:Parameter Name="money" Type="Decimal" />
                <asp:Parameter Name="information" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="xdid" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="fwid" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="date" DbType="Date" />
                <asp:Parameter Name="luxian" Type="String" />
                <asp:Parameter Name="money" Type="Decimal" />
                <asp:Parameter Name="information" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="xdid" Type="String" />
                <asp:Parameter Name="fwid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="fwid" 
            DataSourceID="SqlDataSource2" Height="212px" Width="297px">
            <EditItemTemplate>
                fwid:
                <asp:Label ID="fwidLabel1" runat="server" 
                    Text='<%# Eval("fwid") %>' />
                <br />
                date:
                <asp:TextBox ID="dateTextBox" runat="server" 
                    Text='<%# Bind("date") %>' />
                <br />
                luxian:
                <asp:TextBox ID="luxianTextBox" runat="server" 
                    Text='<%# Bind("luxian") %>' />
                <br />
                money:
                <asp:TextBox ID="moneyTextBox" runat="server" 
                    Text='<%# Bind("money") %>' />
                <br />
                information:
                <asp:TextBox ID="informationTextBox" runat="server" 
                    Text='<%# Bind("information") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" 
                    Text='<%# Bind("city") %>' />
                <br />
                xdid:
                <asp:TextBox ID="xdidTextBox" runat="server" 
                    Text='<%# Bind("xdid") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <InsertItemTemplate>
                fwid:
                <asp:TextBox ID="fwidTextBox" runat="server" 
                    Text='<%# Bind("fwid") %>' />
                <br />
                date:
                <asp:TextBox ID="dateTextBox" runat="server" 
                    Text='<%# Bind("date") %>' />
                <br />
                luxian:
                <asp:TextBox ID="luxianTextBox" runat="server" 
                    Text='<%# Bind("luxian") %>' />
                <br />
                money:
                <asp:TextBox ID="moneyTextBox" runat="server" 
                    Text='<%# Bind("money") %>' />
                <br />
                information:
                <asp:TextBox ID="informationTextBox" runat="server" 
                    Text='<%# Bind("information") %>' />
                <br />
                city:
                <asp:TextBox ID="cityTextBox" runat="server" 
                    Text='<%# Bind("city") %>' />
                <br />
                xdid:
                <asp:TextBox ID="xdidTextBox" runat="server" 
                    Text='<%# Bind("xdid") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                <font size="5px" color="gray">服务信息编码:</font>
                <asp:Label ID="fwidLabel" runat="server" Text='<%# Eval("fwid") %>' />
                <br /><br /><br />
                <font size="5px" color="gray">日期:</font>
                <asp:Label ID="dateLabel" runat="server" 
                    Text='<%# Bind("date") %>' />
                <br /><br /><br />
                <font size="5px" color="gray">路线:</font>
                <asp:Label ID="luxianLabel" runat="server" 
                    Text='<%# Bind("luxian") %>' />
                <br /><br /><br />
                <font size="5px" color="gray">价格:</font>
                <asp:Label ID="moneyLabel" runat="server" 
                    Text='<%# Bind("money") %>' />
                <br /><br /><br />
                <font size="5px" color="gray">服务信息:</font>
                <asp:Label ID="informationLabel" runat="server" 
                    Text='<%# Bind("information") %>' />
                <br /><br /><br />
                <font size="5px" color="gray">城市:</font>
                <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                <br /><br /><br />
               <font size="5px" color="gray"> 向导ID:</font>
                <asp:Label ID="xdidLabel" runat="server" 
                    Text='<%# Bind("xdid") %>' />
                <br /><br /><br />

                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                    CommandName="Edit" Text="编辑" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                    CommandName="Delete" Text="删除" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                    CommandName="New" Text="新建" />
            </ItemTemplate>
        </asp:FormView>
        <br />
    </div>
    </form>
</body>
</html>


