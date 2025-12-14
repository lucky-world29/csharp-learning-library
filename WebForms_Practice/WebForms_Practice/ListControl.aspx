<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListControl.aspx.cs" Inherits="WebForms_Practice.ListControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="c1">India</asp:ListItem>
                <asp:ListItem Value="c2">Japan</asp:ListItem>
                <asp:ListItem Value="c3">China</asp:ListItem>
                <asp:ListItem Value="c4" >USA</asp:ListItem>
                <asp:ListItem Value="c5">UK</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                <asp:ListItem Vlaue="s1" Text="Odisha"></asp:ListItem>
                <asp:ListItem Vlaue="s1" Text="Kohima"></asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
            </asp:RadioButtonList>
            <br />
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            </asp:CheckBoxList>

        </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
