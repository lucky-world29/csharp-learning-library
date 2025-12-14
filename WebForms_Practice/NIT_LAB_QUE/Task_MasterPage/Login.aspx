<%@ Page Title="Login Page" 
    Language="C#" 
    MasterPageFile="~/Task_MasterPage/TaskMaster.master" 
    AutoEventWireup="true" CodeBehind="Login.aspx.cs" 
    Inherits="NIT_LAB_QUE.Task_MasterPage.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow p-4">
                <h3 class="text-center fw-bold mb-3">Login</h3>

                <div class="mb-3">
                    <asp:Label Text="User ID" runat="server" CssClass="form-label"/>
                    <asp:TextBox ID="txtUserId" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <asp:Label Text="Password" runat="server" CssClass="form-label"/>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>

                <asp:Button ID="btnLogin" runat="server" Text="Login"  CssClass="btn btn-primary w-100 mb-3" OnClick="btnLogin_Click" />

                <asp:Label ID="lblMessage" runat="server" CssClass="text-danger fw-bold"></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>
