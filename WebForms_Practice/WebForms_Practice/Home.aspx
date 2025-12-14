<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebForms_Practice.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }

        .h1 {
            color: #333;
        }
    </style>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div style="background-color: aqua; color: coral; font-family: 'Arial Unicode MS'; font-size: larger; font-weight: bold">
        Home Page
    </div>
    <p>
        We have set the pace with online learning. Learn what you want, when you want, and practice with the
instructor-led training sessions, on-demand video tutorials which you can watch and listen.
    </p>
    <ol>
        <li>150+ Online Courses</li>
        <li>UNLIMITED ACCESS</li>
        <li>EXPERT TRAINERS</li>
        <li>VARIETY OF INSTRUCTION</li>
        <li>ON-THE-GO-LEARNING</li>
        <li>PASSIONATE TEAM</li>
        <li>TRAINING INSTITUTE OF CHOICE</li>
    </ol>
</asp:Content>
