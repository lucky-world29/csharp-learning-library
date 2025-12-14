<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task10-Compared_validator.aspx.cs" Inherits="NIT_LAB_QUE.Task10_Compared_validator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 34px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 style="font-family:'Times New Roman'; color:gold;border:2px solid red ; border-radius:5px ; align-content:center">ComparedValidator</h2>
        <table>
            <tr>
                <td>Enter Username:
                </td>
                <td><asp:TextBox ID="txtUser" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Old Password:
                </td>
                <td>
                    <asp:TextBox ID="txtOldPassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True" ControlToValidate="txtOldPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Enter New Password:
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True" ControlToValidate="txtNewPassword"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Re-Type New Password:
                </td>
                <td>
                    <asp:TextBox ID="txtReTypePassword" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" SetFocusOnError="True" ControlToValidate="txtReTypePassword"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="#FF3300" SetFocusOnError="True" ControlToValidate="txtNewPassword"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        
        <asp:Button ID="Button1" runat="server" Height="33px" Text="Button" Width="206px" />
        
    </form>
</body>
</html>
