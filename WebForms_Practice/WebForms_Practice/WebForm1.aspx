<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebForms_Practice.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function evennumber() {
            alert("Ohayo");
            var num = document.getElementById("labelid");
            if (num % 2 == 0)
                Document.Write("EVEN NUMBER");
            else
                Document.Write("NOT EVEN NUMBER");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <h1 >   Even Number Program   </h1>
            <br />
            Enter the Number <input type="text" />
            <br />
            <input type="button" value="Even Number " onclick="evennumber()" />

            <label id="labelid" runat="server"></label>
        </div>
    </form>
</body>
</html>
