<%@ Page Language="C#" AutoEventWireup="true" CodeFile="edit per.aspx.cs" Inherits="edit_per" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;تغييرات پرسنلي<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="name" DataSourceID="SqlDataSource2"
            ForeColor="#333333" GridLines="None">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                <asp:BoundField DataField="tahsilat" HeaderText="tahsilat" SortExpression="tahsilat" />
            </Columns>
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:myDbConnectionString3 %>"
            DeleteCommand="DELETE FROM [myTb] WHERE [name] = @name" InsertCommand="INSERT INTO [myTb] ([name], [username], [password], [emailid], [tahsilat]) VALUES (@name, @username, @password, @emailid, @tahsilat)"
            SelectCommand="SELECT * FROM [myTb]" UpdateCommand="UPDATE [myTb] SET [username] = @username, [password] = @password, [emailid] = @emailid, [tahsilat] = @tahsilat WHERE [name] = @name">
            <DeleteParameters>
                <asp:Parameter Name="name" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="tahsilat" Type="String" />
                <asp:Parameter Name="name" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="tahsilat" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>
