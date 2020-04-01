<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad1.aspx.cs" Inherits="IT_AV04.Zad1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col-xs-4 text-right">Email:</div>
            <div class="col-xs-2">
                <asp:TextBox ID="email" runat="server"></asp:TextBox></div>
            <div class="col-xs-6">
                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="emailVal" 
                    runat="server"
                    ControlToValidate="email"
                    ValidationExpression="\w+@\w+\.\w+"
                    ErrorMessage="Внесете валидна e-mail адреса"></asp:RegularExpressionValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-4 text-right">Password:</div>
            <div class="col-xs-2">
                <asp:TextBox TextMode="Password" ID="password" runat="server"></asp:TextBox></div>
            <div class="col-xs-6">
                <asp:RegularExpressionValidator 
                    class="text-danger"
                    ID="passVal" 
                    runat="server"
                    ControlToValidate="password"
                    ValidationExpression=".{8,}"
                    ErrorMessage="Лозинката мора да содржи барем 8 карактери"></asp:RegularExpressionValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-4 text-right">Confirm Password:</div>
            <div class="col-xs-2">
                <asp:TextBox TextMode="Password" ID="confirmPassword" runat="server"></asp:TextBox></div>
            <div class="col-xs-6">
                <asp:CompareValidator 
                    class="text-danger"
                    ID="cpassVal" 
                    runat="server" 
                    ControlToValidate="confirmPassword"
                    ControlToCompare="password"
                    ErrorMessage="Лозинките не се совпаѓаат"></asp:CompareValidator>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-2">
                <asp:Button ID="register" runat="server" OnClick="register_Click" Text="Регистрација" /></div>
            <div class="col-xs-6">
                <asp:Label ID="message" class="text-success" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
