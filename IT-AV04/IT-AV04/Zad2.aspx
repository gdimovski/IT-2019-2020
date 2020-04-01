<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad2.aspx.cs" Inherits="IT_AV04.Zad2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 text-right">Одберете град:</div>
            <div class="col-xs-2">
                <asp:DropDownList ID="cities" runat="server">
                    <asp:ListItem>(град)</asp:ListItem>
                    <asp:ListItem>Скопје</asp:ListItem>
                    <asp:ListItem>Неготино</asp:ListItem>
                    <asp:ListItem>Велес</asp:ListItem>
                    <asp:ListItem>Куманово</asp:ListItem>
                    <asp:ListItem>Охрид</asp:ListItem>
                    <asp:ListItem>Кочани</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-xs-6">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="gradVal" 
                    ControlToValidate="cities"
                    runat="server" 
                    ErrorMessage="Мора да одберете град!" 
                    InitialValue="(град)"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-2">
                <asp:Button ID="choose" OnClick="choose_Click" runat="server" Text="Одбери" /></div>
            <div class="col-xs-6"></div>
        </div>
        <div class="row">
            <div class="col-xs-4"></div>
            <div class="col-xs-8">
                <asp:Label ID="message" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
