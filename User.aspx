<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="SecurePage" Title="Simple Login Project in ASP.Net" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width: 863px; height: 100px; text-align: left">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
        <asp:LoginName ID="LoginName1" runat="server" />
        <br />
        <br />
        <strong><span style="font-size: 24pt; color: #0000ff">
            <asp:HyperLink ID="HyperLink1" runat="server" Height="40px" NavigateUrl="~/view per.aspx">مشاهده اطلاعات پرسنلي</asp:HyperLink><br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Search.aspx">جستجو</asp:HyperLink><br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </span></strong></div>
</asp:Content>

