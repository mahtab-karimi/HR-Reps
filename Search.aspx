<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Result" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Searching Any Record From Database In ASP.Net</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="width: 375px; height: 66px">
            <asp:Label ID="Label3" runat="server" Text="بر حسب اضافه كاري"></asp:Label><br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" /><br />
            <br />
            <asp:Label ID="Label1" runat="server" Width="318px"></asp:Label></div>
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="718px">
        </asp:GridView>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="بر حسب نام"></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Search" /><br />
        <asp:Label ID="Label2" runat="server" Text="."></asp:Label></div>
        <br />
        <asp:GridView ID="GridView2" runat="server" Width="644px">
        </asp:GridView>
        &nbsp;&nbsp;<br />
        &nbsp;
    </form>
</body>
</html>
