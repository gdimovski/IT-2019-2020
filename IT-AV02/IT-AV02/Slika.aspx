<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Slika.aspx.cs" Inherits="IT_AV02.Slika" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-xs-12 text-center">
            <asp:ImageButton ID="SlikaB" runat="server" OnClick="Slika_Click" ImageUrl="~/av-03.jpg" />
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 text-center">
            <asp:Label ID="Koordinati" runat="server" Text="(none)"></asp:Label>
        </div>
    </div>


</asp:Content>
