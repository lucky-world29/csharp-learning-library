<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator1.aspx.cs" Inherits="WebForms_Practice.Calculator1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
        <table align="center" id="tablecss">
            <caption>Simple Calculator</caption>
            <tr>
                <td>Enter 1<sup>st</sup> Number  </td>
                <td>
                    <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Enter  2 <sup>nd</sup> Number  </td>
                <td>
                    <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>Obtained Result </td>
                <td>
                    <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Button Text="Add" ID="btnAdd" runat="server" OnClick="Buttons_Click" CommandName="+" OnCommand="Buttons_Command" />
                    <asp:Button Text="Mul" ID="btnMul" runat="server" OnClick="Buttons_Click" CommandName="*" />
                    <asp:Button Text="Div" ID="btnDiv" runat="server" OnClick="Buttons_Click" CommandName="/" />
                    <asp:Button Text="Sub" ID="btnSub" runat="server" OnClick="Buttons_Click" CommandName="-" />
                    <asp:Button Text="CLEAR" ID="clear" OnClick="clear_Click" runat="server" />
                </td>

            </tr>

        </table>
    </form>
</body>
</html>
