<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ezafekari.aspx.cs" Inherits="ezafekari" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        اضافه كاري<br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="name" DataSourceID="SqlDataSource1"
            ForeColor="#333333" GridLines="None">
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="ezafekari" HeaderText="ezafekari" SortExpression="ezafekari" />
            </Columns>
            <RowStyle BackColor="#E3EAEB" />
            <EditRowStyle BackColor="#7C6F57" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myDbConnectionString5 %>"
            DeleteCommand="DELETE FROM [myTb] WHERE [name] = @name" InsertCommand="INSERT INTO [myTb] ([name], [ezafekari]) VALUES (@name, @ezafekari)"
            SelectCommand="SELECT [name], [ezafekari] FROM [myTb]" UpdateCommand="UPDATE [myTb] SET [ezafekari] = @ezafekari WHERE [name] = @name">
            <DeleteParameters>
                <asp:Parameter Name="name" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ezafekari" Type="String" />
                <asp:Parameter Name="name" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="ezafekari" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        &nbsp;&nbsp;<br />
        &nbsp;</div>
    </form>
</body>
</html>
