<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task1.aspx.cs" Inherits="NIT_LAB_QUE.Task1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server" align="center">
        <h1  align="center">Welcome to Login Page</h1>
        <table align="center" >
            <tr>
                <td>Enter User Name</td>
                <td>
                    <asp:TextBox ID="name" runat="server" />
                </td>
            </tr>
            <tr>
                <td>Enter Password</td>
                <td>
                    <asp:TextBox ID="password" runat="server" TextMode="Password" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnId" Text="Login" runat="server" OnClick="btnId_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
