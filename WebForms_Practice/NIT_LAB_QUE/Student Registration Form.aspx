<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student Registration Form.aspx.cs" Inherits="NIT_LAB_QUE.Student_Registration_Form" %>

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
        <div>
            <table>
                <tr>
                    <td class="auto-style1">First Name :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="rfvFiirstName"
                            runat="server"
                            ErrorMessage="First Name Required "
                            Display="Dynamic"
                            ForeColor="#FF3300" ControlToValidate="txtFirstname" />
                    </td>
                </tr>

                <tr>
                    <td>Last Name :</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator
                            ID="rfvLastName"
                            runat="server"
                            ErrorMessage="Last Name Required "
                            Display="Dynamic"
                            ForeColor="#FF3300" ControlToValidate="txtLastName" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">Age :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtAge" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator 
                            ID="refAge" 
                            runat="server" 
                            BackColor="#66FF66" 
                            ControlToValidate="txtAge" 
                            Display="Dynamic" 
                            ErrorMessage="Age Required" />
                    </td>
                </tr>
                <tr>
                 <td>
                       <asp:Button ID="btnSubmit" runat="server" Text="Button" BorderStyle="Groove" ForeColor="#FF6699" OnClick="btn_Click" />
                       </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
