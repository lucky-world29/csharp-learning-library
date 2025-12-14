<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task7.aspx.cs" Inherits="NIT_LAB_QUE.Task7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <h1>Internet Data Usage Billing System </h1>
            <table>
                <tr>
                    <td>Customer ID</td>
                    <td>
                        <asp:TextBox ID="CustomerId" runat="server" /></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" /></td>
                </tr>
                <tr>
                    <td>Data Used</td>
                    <td>
                        <asp:TextBox ID="txtData" runat="server" />
                         <span style="font-weight:bold; font-size:18px; margin-left:5px;">GB</span>
                    </td>
                </tr>
                <tr>
                    <td>Plan Type</td>
                    <td>
                        <asp:DropDownList ID="ddlPlan" runat="server" >
                            <asp:ListItem Text="Basic" Value="B"></asp:ListItem>
                            <asp:ListItem Text="Standard" Value="S"></asp:ListItem>
                            <asp:ListItem Text="Premium" Value="P"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                   <td colspan="2" align="center">
                        <asp:Button ID="Button1" runat="server" Text="Calculate Bill" OnClick="Button1_Click" />
                   </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="LabelResult" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
            </ta<a href="Task4-Success.aspx">Task4-Success.aspx</a>
            ble>
        </div>
    </form>
</body>
</html>
