<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task6.aspx.cs" Inherits="NIT_LAB_QUE.Task6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2 align="center">Electricity Bill Calculator </h2>
        <div>
            <table align="center">
                <tr>
                    <td>Customer ID :</td>
                    <td>
                        <asp:TextBox ID="TextBoxCustomerID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Name :</td>
                    <td>
                        <asp:TextBox ID="TextBoxCustomerName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Units Consumed :</td>
                    <td>
                        <asp:TextBox ID="TextBoxUnit" runat="server"></asp:TextBox></td>
                </tr>
            </table>
            <br />
            <div align="center">
                <asp:Button ID="ButtonBillResult" runat="server"  Text="Calculate Bill" OnClick="BillCalculate" />
            </div>
            <div align="center">
                <asp:Label ID="LabelResult" runat="server" Text="" Font-Size="X-Large"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
