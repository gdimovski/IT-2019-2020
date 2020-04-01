<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IT_AV02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>IT - AV 02</h1>
    </div>

    <div class="row">
        <div class="col-md-4 text-center">
            <asp:ListBox ID="ListaGradovi" runat="server" OnSelectedIndexChanged="ListaGradovi_SelectedIndexChanged" AutoPostBack="True" SelectionMode="Multiple">
                <asp:ListItem Value="0">Скопје</asp:ListItem>
                <asp:ListItem Value="50">Велес</asp:ListItem>
                <asp:ListItem Value="200">Охрид</asp:ListItem>
            </asp:ListBox>
            <hr />
            Селектираниот град е: <asp:Label ID="SelektiraniGradovi" runat="server" Text="(нема селектирано град)"></asp:Label>
            <br />
            <!-- Растојанието од Скопје е: <asp:Label ID="Rastojanie" runat="server" Text="(none)"></asp:Label> km. -->
        </div>
    </div>

</asp:Content>
