<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="Simple Login Project in ASP.Net" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>

    <table  id="TABLE1" onclick="return TABLE1_onclick()">
        <tr>
            <td style="width: 2266px">
            </td>
            <td style="width: 434px">
                </td>
            <td style="width: 2700px">
                <asp:Label ID="lblinfo" runat="server" Width="374px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 2266px">
                </td>
            <td style="width: 434px">
                نام كاربري</td>
            <td style="width: 2700px">
                <asp:TextBox ID="username" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 2266px">
                </td>
            <td style="width: 434px">
                رمز ورود</td>
            <td style="width: 2700px">
                <asp:TextBox ID="password" runat="server" TextMode="Password" Width="148px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 2266px">
            </td>
            <td style="width: 434px">
                <br />
                &nbsp;</td>
            <td style="width: 2700px">
                <asp:Button ID="log" runat="server" OnClick="log_Click" Text="ورود" Width="77px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

