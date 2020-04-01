<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SlikaB.aspx.cs" Inherits="IT_AV02.SlikaB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-xs-12 text-center">
            <asp:ImageButton ID="Slika" runat="server" ImageUrl="~/av-03.jpg" OnClick="Slika_Click" />
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 text-center">
            Координати: <asp:Label ID="Koordinati" runat="server" Text="(x,y)"></asp:Label>
        </div>
    </div>
</asp:Content>
