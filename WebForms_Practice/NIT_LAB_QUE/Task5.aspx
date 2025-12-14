<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task5.aspx.cs" Inherits="NIT_LAB_QUE.Task5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      
            <h2 align="center">Employee Pay Slip</h2>
        <div align="center"> 
            <table>
                <tr>
                    <td>Employee ID:</td>
                    <td><asp:TextBox ID="txtEmployeeId" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><asp:TextBox ID="txtEmployeeName" runat="server"></asp:TextBox></td>
                  </tr>
                <tr>
                    <td>Basic Pay:</td>
                    <td><asp:TextBox ID="txtBasicSalary" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnCalculate" runat="server" Text="Submit" OnClick="btnCalculate_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label  runat="server" ID="LabelResult"  Font-Size="X-Large" align="center"/>
        </div>
    </form>
</body>
</html>
