<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/edit per.aspx">تغييرات پرسنلي</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ezafekari.aspx">ثبت اضافه كاري</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/view per.aspx">مشاهده اطلاعات پرسنلي</asp:HyperLink><br />
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Search.aspx">جستجو</asp:HyperLink>
</asp:Content>

