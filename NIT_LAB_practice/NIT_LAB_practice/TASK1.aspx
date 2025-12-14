<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TASK1.aspx.cs" Inherits="NIT_LAB_practice.TASK1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TASK!</title>
    <style>
        h1 {
            color: red;
            text-align: center;
        }
        button{
            text-align:center
           
        }
    </style>
</head>
<body style="background-color: darkblue">
    <form id="form1" runat="server">
        <div>
            <h1>Ado. Net Quiz Radio Button </h1>
            <div>
                <p>1. Which namespace is essential to use ADO.NET in a C# application?</p>
                <asp:RadioButton ID="q1o1" runat="server" GroupName="Question1" Text="System.Web.Data " Value="a"/><br />
                <asp:RadioButton ID="q1o2" runat="server" GroupName="Question1" Text="System.Data.SqlClient" />
                <br />
                <asp:RadioButton ID="q1o3" runat="server" GroupName="Question1" Text="System.ADO " />
                <br />
                <asp:RadioButton ID="q1o4" runat="server" GroupName="Question1" Text="System.Sql" />
            </div>
            <div>
                <p>
                    2. Which of the following is used to retrieve data from a database in a 
forward-only, read-only manner?
                </p>
                <asp:RadioButton ID="q2o1" runat="server" GroupName="Question2" Text="SqlDataAdapter" /><br />
                <asp:RadioButton ID="q2o2" runat="server" GroupName="Question2" Text="DataSet" />
                <br />
                <asp:RadioButton ID="q2o3" runat="server" GroupName="Question2" Text="SqlDataReader" />
                <br />
                <asp:RadioButton ID="q2o4" runat="server" GroupName="Question2" Text="DataTable" />
            </div>
            <div>
                <p>3. Which ADO.NET object is disconnected from the data source?</p>
                <asp:RadioButton ID="q3o1" runat="server" GroupName="Question3" Text="SqlDataReader  " /><br />
                <asp:RadioButton ID="q3o2" runat="server" GroupName="Question3" Text=" DataReader " />
                <br />
                <asp:RadioButton ID="q3o3" runat="server" GroupName="Question3" Text="DataSet " />
                <br />
                <asp:RadioButton ID="q3o4" runat="server" GroupName="Question3" Text="SqlCommand" />
            </div>
            <div>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" BackColor="#FF5050" BorderStyle="Solid" OnClick="btn_submit"  style="align-content:center" /> 
            </div>
            <div>
                <asp:Label ID="ResultLabel" runat="server" ForeColor="White" Font-Bold="True"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
