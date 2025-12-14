<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TASK2.aspx.cs" Inherits="NIT_LAB_practice.TASK2" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border: 2px solid red; border-radius: 30px; background-color: wheat; align-items: center;">
            <table align="center">
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <h2>Student Registration Form</h2>
                    </td>
                </tr>

                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                            ControlToValidate="txtFirstName" ErrorMessage="First Name Mandatory"
                            Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                            ControlToValidate="txtLastName" ErrorMessage="Last Name Mandatory"
                            Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Gender:</td>
                    <td>
                        <asp:RadioButton ID="rbMale" runat="server" GroupName="gender" Text="Male" />
                        <asp:RadioButton ID="rbFemale" runat="server" GroupName="gender" Text="Female" />
                        <asp:CustomValidator ID="cvGender" runat="server"
                            ErrorMessage="Select Gender" Display="Dynamic" ForeColor="Red"
                            OnServerValidate="cvGender_ServerValidate"></asp:CustomValidator>

                    </td>
                </tr>

                <tr>
                    <td>Select Course:</td>
                    <td>
                        <asp:DropDownList ID="ddlCourse" runat="server">
                            <asp:ListItem>Select Course</asp:ListItem>
                            <asp:ListItem>.Net</asp:ListItem>
                            <asp:ListItem>Java</asp:ListItem>
                            <asp:ListItem>PHP</asp:ListItem>
                            <asp:ListItem>Ruby</asp:ListItem>
                            <asp:ListItem>Go</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvCourse" runat="server"
                            ControlToValidate="ddlCourse" InitialValue="Select Course"
                            ErrorMessage="Course Mandatory" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Email Id:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtEmail" ErrorMessage="Email Mandatory"
                            Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server"
                            ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Age:</td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvAge" runat="server"
                            ControlToValidate="txtAge" ErrorMessage="Age Mandatory"
                            Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revAge" runat="server"
                            ControlToValidate="txtAge" ErrorMessage="Age must be a number"
                            ValidationExpression="^[0-9]{1,2}$"
                            Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
                            ControlToValidate="txtPassword" ErrorMessage="Password Mandatory"
                            Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revPassword" runat="server"
                            ControlToValidate="txtPassword"
                            ErrorMessage="Password must be at least 6 characters"
                            ValidationExpression="^.{6,}$"
                            Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="txtCPassword" TextMode="Password" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvCPassword" runat="server"
                            ControlToValidate="txtCPassword" ErrorMessage="Confirm Password Required"
                            Display="Dynamic" ForeColor="Red" />
                        <asp:CompareValidator ID="cvPassword" runat="server"
                            ControlToValidate="txtCPassword" ControlToCompare="txtPassword"
                            ErrorMessage="Passwords do not match" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Select City:</td>
                    <td>
                        <asp:DropDownList ID="ddlCity" runat="server">
                            <asp:ListItem>Select City</asp:ListItem>
                            <asp:ListItem>Bhubaneswar</asp:ListItem>
                            <asp:ListItem>Delhi</asp:ListItem>
                            <asp:ListItem>Punjab</asp:ListItem>
                            <asp:ListItem>Hyderabad</asp:ListItem>
                            <asp:ListItem>Bangalore</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvCity" runat="server"
                            ControlToValidate="ddlCity" InitialValue="Select City"
                            ErrorMessage="City Mandatory" Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Pin Code:</td>
                    <td>
                        <asp:TextBox ID="txtPinCode" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvPinCode" runat="server"
                            ControlToValidate="txtPinCode" ErrorMessage="Pin Code Mandatory"
                            Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revPin" runat="server"
                            ControlToValidate="txtPinCode" ErrorMessage="Pin must be 6 digits"
                            ValidationExpression="^[0-9]{6}$"
                            Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Date:</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvDate" runat="server"
                            ControlToValidate="txtDate" ErrorMessage="Select Date"
                            Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td>Mobile Number:</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" />
                        <asp:RequiredFieldValidator ID="rfvMobile" runat="server"
                            ControlToValidate="txtMobile" ErrorMessage="Mobile Mandatory"
                            Display="Dynamic" ForeColor="Red" />
                        <asp:RegularExpressionValidator ID="revMobile" runat="server"
                            ControlToValidate="txtMobile" ErrorMessage="Mobile must be 10 digits"
                            ValidationExpression="^[0-9]{10}$"
                            Display="Dynamic" ForeColor="Red" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btn_Submit" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align: center;">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                            ForeColor="Red" HeaderText="Please fix the below errors:" />
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
