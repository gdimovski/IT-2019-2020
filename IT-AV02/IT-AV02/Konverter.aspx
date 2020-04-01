<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Konverter.aspx.cs" Inherits="IT_AV02.Konverter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="row">
        <div class="col-xs-6 text-right">Име:</div>
        <div class="col-xs-6"><asp:TextBox ID="ValutaIme" runat="server"></asp:TextBox></div>
    </div>
    <div class="row">
        <div class="col-xs-6 text-right">Вредност:</div>
        <div class="col-xs-6"><asp:TextBox ID="ValutaVrednost" runat="server"></asp:TextBox></div>
    </div>
    <div class="row">
        <div class="col-xs-6 text-right"></div>
        <div class="col-xs-6">
            <asp:Button ID="Dodaj" runat="server" Text="Додај" OnClick="Dodaj_Click" />
            <asp:Button ID="Izbrishi" runat="server" Text="Избриши" OnClick="Izbrishi_Click" />
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-xs-6 text-right">Валути:</div>
        <div class="col-xs-6"><asp:RadioButtonList ID="ListaValuti" runat="server" OnSelectedIndexChanged="ListaValuti_SelectedIndexChanged" AutoPostBack="True"></asp:RadioButtonList></div>
    </div>
    <div class="row">
        <div class="col-xs-6 text-right">Вкупно:</div>
        <div class="col-xs-6"><asp:Label ID="Vkupno" runat="server" Text="0"></asp:Label></div>
    </div>
    <hr />
    <div class="row">
        <div class="col-xs-6 text-right">
            <asp:TextBox ID="Kolichina" Text="0" runat="server"></asp:TextBox>
        </div>
        <div class="col-xs-6">
            Конвертирано: <asp:Label ID="Konvertirano" runat="server" Text="(none)"></asp:Label>
        </div>
    </div>
</asp:Content>
