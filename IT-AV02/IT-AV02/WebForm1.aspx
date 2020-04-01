<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="IT_AV02.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-xs-6">
            Позадина:
            <asp:DropDownList ID="Pozadina" runat="server"></asp:DropDownList>
            <br />
            Фонт:
            <asp:DropDownList ID="Font" runat="server"></asp:DropDownList>
            <br />
            Боја:
            <asp:DropDownList ID="Boja" runat="server"></asp:DropDownList>
            <br />
            Големина:
            <asp:TextBox ID="Golemina" runat="server"></asp:TextBox>
            <br />
            Рамка:
            <asp:RadioButtonList ID="Ramka" runat="server"></asp:RadioButtonList>
            <br />
            Слика:
            <asp:CheckBox ID="ShowSlika" runat="server" />
            <br />
            Текст:
            <asp:TextBox ID="Tekst" runat="server" TextMode="MultiLine"></asp:TextBox>

            <hr />
            <asp:Button ID="Kreiraj" runat="server" Text="Креирај" OnClick="Kreiraj_Click" />
        </div>
        <div class="col-xs-6">
            <asp:Panel ID="Panela" runat="server">
                <asp:Label ID="Naslov" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Image ID="Slika" ImageUrl="~/av-03.jpg" runat="server" Height="500px" Width="500px" />
            </asp:Panel>
        </div>
    </div>
</asp:Content>
