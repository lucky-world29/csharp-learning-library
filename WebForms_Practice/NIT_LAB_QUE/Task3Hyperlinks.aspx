<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task3Hyperlinks.aspx.cs" Inherits="NIT_LAB_QUE.Task3Hyperlinks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        div{
            padding:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" >
            <!--<asp:Image ImageUrl="https://live.staticflickr.com/7560/15821449755_7327a891fb.jpg" runat="server" />-->
            <asp:HyperLink ID="NIT_LINK" runat="server" ImageUrl="~/images/nareshit_logo.jpg" ImageWidth="200px" NavigateUrl="https://nareshit.com/"/>
            <asp:HyperLink ID="MS_LINK" runat="server"  ImageUrl="~/images/microsoft-logo.jpg" ImageWidth="200px" NavigateUrl="https://www.microsoft.com/en-in/"/>
        </div>
    </form>
</body>
</html>
