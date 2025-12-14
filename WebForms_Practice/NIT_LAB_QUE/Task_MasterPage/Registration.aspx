<%@ Page Title="Registration Page" Language="C#" 
    MasterPageFile="~/Task_MasterPage/TaskMaster.master" 
    AutoEventWireup="true" 
    CodeBehind="Registration.aspx.cs" 
    Inherits="NIT_LAB_QUE.Task_MasterPage.Registration" %>

<asp:Content ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div class="row justify-content-center mt-5">
        <div class="col-md-6"> <!-- width control -->
            <div class="card shadow p-4">
                <h3 class="text-center fw-bold mb-3">Registration</h3>

                <div class="mb-3">
                    <asp:Label Text="Full Name" runat="server" CssClass="form-label"/>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"/>
                </div>

                <div class="mb-3">
                    <asp:Label Text="Email" runat="server" CssClass="form-label"/>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"/>
                </div>

                <div class="mb-3">
                    <asp:Label Text="Phone" runat="server" CssClass="form-label"/>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"/>
                </div>

                <div class="mb-3">
                    <asp:Label Text="Address" runat="server" CssClass="form-label"/>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"/>
                </div>

                <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                    CssClass="btn btn-success w-100 mb-3" OnClick="btnSubmit_Click"/>

                <asp:Button ID="btnReset" runat="server" Text="Reset"
                    CssClass="btn btn-danger w-100" OnClick="btnReset_Click"/>

                <asp:Label ID="lblShow" runat="server" CssClass="mt-3 fw-bold text-primary d-block"></asp:Label>
            </div>
        </div>
    </div>

</asp:Content>
