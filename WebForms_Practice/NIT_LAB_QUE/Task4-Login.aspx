<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task4-Login.aspx.cs" Inherits="NIT_LAB_QUE.Task4_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 align="center">Welcome To Login Page ?!</h1>
            <table align="center">

                <tr>
                    <td>Id :</td>
                    <td>
                        <asp:TextBox ID="uid" runat="server" /></td>
                </tr>
                <tr>
                    <td>Pwd :</td>
                    <td>
                        <asp:TextBox ID="pwd" runat="server" TextMode="Password"/>
                    </td>
                </tr>
                <tr colspan="2" align="center">
                 <td><asp:Button ID="t4Login" runat="server" Text="Login" OnClick="IP_login" /></td> 
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
