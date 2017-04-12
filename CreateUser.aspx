<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" Title="Simple Login Project in ASP.Net" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Label ID="lblinfo" runat="server" Width="361px" Font-Bold="True" ForeColor="Red"></asp:Label></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                نام</td>
            <td style="width: 100px">
                <asp:TextBox ID="name" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                نام كاربري</td>
            <td style="width: 100px">
                <asp:TextBox ID="username" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                رمز ورود</td>
            <td style="width: 100px">
                <asp:TextBox ID="password" runat="server" TextMode="Password" Width="149px"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                ايميل</td>
            <td style="width: 100px">
                <asp:TextBox ID="emailid" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px; height: 26px;">
                تحصيلات</td>
            <td style="width: 100px; height: 26px;">
                <asp:TextBox ID="tahsilat" runat="server"></asp:TextBox></td>
            <td style="width: 100px; height: 26px;">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:Button ID="create" runat="server" Text="ثبت نام" Width="110px" OnClick="create_Click" /></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:myDbConnectionString1 %>"
                SelectCommand="SELECT myTb.* FROM myTb">
                </asp:SqlDataSource>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name"
                    ErrorMessage="RequiredFieldValidator" Width="367px">لطفاً نام را وارد كنيد</asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="username"
                    ErrorMessage="RequiredFieldValidator" Width="365px">لطفاً نام كاربري را وارد كنيد</asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password"
                    ErrorMessage="RequiredFieldValidator" Width="363px">لطفاً رمز را وارد كنيد</asp:RequiredFieldValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="emailid"
                    ErrorMessage="RequiredFieldValidator" Width="362px">لطفاً ايميل را وارد كنيد</asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="emailid"
                    ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    Width="359px">ايميل اشتباه است</asp:RegularExpressionValidator></td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
    <br />
    &nbsp;<br />
</asp:Content>

