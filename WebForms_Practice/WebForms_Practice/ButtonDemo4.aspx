<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonDemo4.aspx.cs" Inherits="WebForms_Practice.ButtonDemo4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function SubmitConfirmation() {
            var status = confirm("Are you sure you want to submit?");
            return status;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
      <asp:Button ID="Button1" Text="Click Me"  runat="server" OnClick="Unnamed1_Click" OnClientClick="return SubmitConfirmation()"/>
        <asp:Label ID="Label1" runat="server"/>
    </form>
</body>
</html>
