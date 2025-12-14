<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task11_NIT_CALCULATOR.aspx.cs" Inherits="NIT_LAB_QUE.Task11_NIT_CALCULATOR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    
        <style >
        body {
            background: #f3f6fb;
            font-family: Arial, sans-serif;
        }

        table {
            margin: 40px auto;
            padding: 20px;
            border-radius: 15px;
            background: #ffffff;
            box-shadow: 0px 4px 20px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            font-size: 26px;
            color: #0066cc !important;
        }

        asp\:TextBox, input[type="text"] {
            padding: 10px;
            font-size: 20px;
            width: 220px;
            border-radius: 8px;
            border: 2px solid #4a90e2 !important;
            margin-bottom: 20px;
        }

        asp\:Button, input[type="submit"] {
            width: 60px;
            height: 50px;
            font-size: 20px;
            font-weight: bold;
            color: #fff;
            border-radius: 10px;
            border: none !important;
            cursor: pointer;
            transition: 0.2s;
        }

        /* Numbers */
        #btn0, #btn1, #btn2, #btn3, #btn4, #btn5, #btn6, #btn7, #btn8, #btn9 {
            background-color: #3399ff !important;
        }

        /* Operators */
        #btnAdd, #btnSub, #btnMul, #btnDiv {
            background-color: #ff9900 !important;
        }

        /* Results */
        #btnRes {
            background-color: #28a745 !important;
        }

        /* Clear Button */
        #btnClear {
            background-color: #ff3300 !important;
        }

        /* Hover effect */
        asp\:Button:hover, input[type="submit"]:hover {
            transform: scale(1.1);
            opacity: 0.9;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <h2 style="text-align: center; color: cornflowerblue">NareshIt Calculator</h2>
                <tr>
                    <td colspan="4">
                        <asp:TextBox ID="resTxtBox" runat="server" Width="200px" Style="border: 1px solid blue" />
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btn1" runat="server" Text="1" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btn2" runat="server" Text="2" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btn3" runat="server" Text="3" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="+" BackColor="#FF9900" OnClick="btn_click_for_all" /></td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btn4" runat="server" Text="4" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btn5" runat="server" Text="5" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btn6" runat="server" Text="6" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btnSub" runat="server" Text="-" BackColor="#FF9900" OnClick="btn_click_for_all" /></td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btn7" runat="server" Text="7" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btn8" runat="server" Text="8" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btn9" runat="server" Text="9" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btnMul" runat="server" Text="*" BackColor="#FF9900" OnClick="btn_click_for_all" /></td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btn0" runat="server" Text="0" BackColor="#3399FF" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btnClear" runat="server" Text="C" BackColor="#FF3300" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btnRes" runat="server" Text="=" BackColor="#339933" OnClick="btn_click_for_all" /></td>
                    <td>
                        <asp:Button ID="btnDiv" runat="server" Text="/" BackColor="#FF9900" OnClick="btn_click_for_all" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
