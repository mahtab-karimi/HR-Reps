<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view per.aspx.cs" Inherits="view_per" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
                <asp:BoundField DataField="tahsilat" HeaderText="tahsilat" SortExpression="tahsilat" />
                <asp:BoundField DataField="ezafekari" HeaderText="ezafekari" SortExpression="ezafekari" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDbConnectionString6 %>"
            DeleteCommand="DELETE FROM [myTb] WHERE [name] = @name" InsertCommand="INSERT INTO [myTb] ([name], [username], [password], [emailid], [tahsilat], [ezafekari]) VALUES (@name, @username, @password, @emailid, @tahsilat, @ezafekari)"
            SelectCommand="SELECT * FROM [myTb]" UpdateCommand="UPDATE [myTb] SET [username] = @username, [password] = @password, [emailid] = @emailid, [tahsilat] = @tahsilat, [ezafekari] = @ezafekari WHERE [name] = @name" OnSelecting="SqlDataSource1_Selecting">
            <DeleteParameters>
                <asp:Parameter Name="name" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="tahsilat" Type="String" />
                <asp:Parameter Name="ezafekari" Type="String" />
                <asp:Parameter Name="name" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="password" Type="String" />
                <asp:Parameter Name="emailid" Type="String" />
                <asp:Parameter Name="tahsilat" Type="String" />
                <asp:Parameter Name="ezafekari" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <br />
        </div>
    </form>
</body>
</html>
