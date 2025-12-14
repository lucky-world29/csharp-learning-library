<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Task-8_RadioButton List_Dec_1.aspx.cs" Inherits="NIT_LAB_QUE.Task_8_RadioButton_List_Dec_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>C# MCQ</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Q1-->
            <h1 style="text-align: center; color: blue">C# Questions</h1>

            <h4>1. What is the output of the following code?</h4>
            <p>
                int a = 5, b = 10;<br />
                Console.WriteLine(a + b);
            </p>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="a">a) 5</asp:ListItem>
                <asp:ListItem Value="b">b) 10</asp:ListItem>
                <asp:ListItem Value="c">c) 15</asp:ListItem>
                <asp:ListItem Value="d">d) 20</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q2-->
            <h4>2. Choose .NET class name from which data type "UInt" is derived ?</h4>

            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem Value="a">a) System.Int16</asp:ListItem>
                <asp:ListItem Value="b">b) System.UInt32</asp:ListItem>
                <asp:ListItem Value="c">c) System.UInt64</asp:ListItem>
                <asp:ListItem Value="d">d) System.UInt16</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q3-->
            <h4>3. Correct declaration of Values to variables 'a' & 'b' ?</h4>

            <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                <asp:ListItem Value="a">a) int a = 32,b=40.6</asp:ListItem>
                <asp:ListItem Value="b">b) int a =42;b=40;</asp:ListItem>
                <asp:ListItem Value="c">c) int a =32;int b =40;</asp:ListItem>
                <asp:ListItem Value="d">d) int a = b = 42</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q4 -->
            <h4>4. Which of the following are the classes defined by the namespace System.Net?</h4>

            <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                <asp:ListItem Value="a">a) Cookie</asp:ListItem>
                <asp:ListItem Value="b">b) CookieContainer</asp:ListItem>
                <asp:ListItem Value="c">c) FileWebRequest</asp:ListItem>
                <asp:ListItem Value="d">d) All of the mentioned</asp:ListItem>
            </asp:RadioButtonList>

            <!-- Q5 -->
            <h4>5. Arrange the following data type in order of increasing magnitude sbyte, short, long, int.</h4>

            <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                <asp:ListItem Value="a">a) long &lt; short &lt; int &lt; sbyte</asp:ListItem>
                <asp:ListItem Value="b">b) sbyte &lt; short &lt; int &lt; long</asp:ListItem>
                <asp:ListItem Value="c">c) short &lt; sbyte &lt; int &lt; long</asp:ListItem>
                <asp:ListItem Value="d">d) short &lt; int &lt; sbyte &lt; long</asp:ListItem>
            </asp:RadioButtonList>


            <!-- Q6 -->
            <h4>6. Which data type should be more preferred for storing a simple number like 35 to improve execution speed of a program?</h4>

            <asp:RadioButtonList ID="RadioButtonList6" runat="server">
                <asp:ListItem Value="a">a) sbyte</asp:ListItem>
                <asp:ListItem Value="b">b) short</asp:ListItem>
                <asp:ListItem Value="c">c) int</asp:ListItem>
                <asp:ListItem Value="d">d) long</asp:ListItem>
            </asp:RadioButtonList>


            <!--SUBMIT BUTTON  -->
            <div style="background-color: bisque; width: 200px; height: 30px; text-align: center; justify-content: center; padding: 10px">
                <asp:Button ID="btn_submit" runat="server" Text="Submit" ForeColor="Yellow" OnClick="btn_ans_submmit" />
            </div>

            <!--  LABEL for ANSWER  -->
            <asp:Label runat="server" ID="lbl_result" />
        </div>
    </form>
</body>
</html>
