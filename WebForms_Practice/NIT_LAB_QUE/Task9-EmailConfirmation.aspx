<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task9-EmailConfirmation.aspx.cs" Inherits="NIT_LAB_QUE.Task9_EmailConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Email Confirmation</h1>
            <table>
                <tr>
                    <td>Email :</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Please Enter a Valid Email" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Confirm Email :</td>
                    <td>
                        <asp:TextBox ID="txtEmailConfirm" runat="server"></asp:TextBox>
                        <asp:CompareValidator ID="rfvCEmail" runat="server" ControlToCompare="txtEmail" Display="Dynamic" ErrorMessage="Confirm password should match with password" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtEmailConfirm"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="cvCEmail" runat="server" ControlToValidate="txtEmailConfirm" Display="Dynamic" ErrorMessage="Confirm password field can't be left empty." ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="senter"> 
                        <asp:Button ID="smtBtn" runat="server" Text="Submit" OnClick="smtBtn_Click" />
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
