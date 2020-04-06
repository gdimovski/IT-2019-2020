<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Katalog.aspx.cs" Inherits="IT_AV05.Katalog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-xs-12 text-center">
            <h1>Категории</h1>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-offset-4 col-xs-8">
            <asp:LinkButton ID="sl" runat="server" OnClick="sl_Click">Стручна Литература</asp:LinkButton>
            <br />
            <asp:LinkButton ID="be" runat="server" OnClick="be_Click">Белетристика</asp:LinkButton>
            <br />
            <asp:LinkButton ID="mg" runat="server" OnClick="mg_Click">Магазини</asp:LinkButton>
        </div>
    </div>
</asp:Content>
