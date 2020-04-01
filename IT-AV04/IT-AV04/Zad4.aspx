<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad4.aspx.cs" Inherits="IT_AV04.Zad4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-4">Телефон:</div>
            <div class="col-xs-2">
                <asp:TextBox ID="telefon" runat="server"></asp:TextBox></div>
            <div class="col-xs-6">
                <asp:RegularExpressionValidator
                    ID="telefonVal"
                    class="text-danger"
                    ControlToValidate="telefon"
                    ValidationExpression="\+389 07[0125678] [0-9]{3} [0-9]{3}"
                    runat="server" 
                    ErrorMessage="Внесете валиден македонски број!"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-2">
                <asp:Button ID="vnesi" OnClick="vnesi_Click" runat="server" Text="Внеси" /></div>
            <div class="col-xs-6"></div>
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-8">
                <asp:Label class="text-success" ID="message" runat="server" Text=""></asp:Label></div>
        </div>
    </div>
</asp:Content>
