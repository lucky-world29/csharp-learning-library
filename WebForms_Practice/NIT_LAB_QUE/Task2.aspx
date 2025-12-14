<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task2.aspx.cs" Inherits="NIT_LAB_QUE.Task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Marks Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <h2>Student Marks List Form</h2>
            <table>
                <tr>
                    <td>Roll Number</td>
                    <td>
                        <asp:TextBox ID="txtRollNo" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Sub1</td>
                    <td>
                        <asp:TextBox ID="txtSub1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Sub2</td>
                    <td>
                        <asp:TextBox ID="txtSub2" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Sub3</td>
                    <td>
                        <asp:TextBox ID="txtSub3" runat="server" />
                    </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                        <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="btn_Submit" />
                        <asp:Button ID="btnSubmit0" Text="Reset" runat="server" OnClick="btn_Reset" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblRollNo"  runat="server"></asp:Label><br /> 
                        <asp:Label ID="lblName" runat="server"></asp:Label><br />
                        <asp:Label ID="lblMarks" runat="server"></asp:Label><br />
                        <asp:Label ID="lblTotal" runat="server"></asp:Label><br />
                        <asp:Label ID="lblAvg" runat="server"></asp:Label><br />
                        <asp:Label ID="lblGrade" runat="server" Font-Bold="true"></asp:Label><br />
                        <asp:Label ID="lblResult" runat="server" Font-Bold="true" Font-Size="XX-Large"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
