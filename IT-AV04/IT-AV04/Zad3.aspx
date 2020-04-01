<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zad3.aspx.cs" Inherits="IT_AV04.Zad3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 text-right">Предмет:</div>
            <div class="col-xs-2">
                <asp:TextBox ID="subject" AutoPostBack="true" runat="server" OnTextChanged="subject_TextChanged1" ValidationGroup="grupa1"></asp:TextBox></div>
            <div class="col-xs-6">
                <asp:RequiredFieldValidator 
                    class="text-danger"
                    ID="subjectVal" 
                    runat="server" 
                    ControlToValidate="subject"
                    ErrorMessage="Името е задолжително!"
                    Display="None"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">Оцена:</div>
            <div class="col-xs-2">
                <asp:TextBox Enabled="false" ID="grade" runat="server"></asp:TextBox></div>
            <div class="col-xs-6">
                <asp:RangeValidator 
                    class="text-danger"
                    ID="gradeVal"
                    ControlToValidate="grade"
                    runat="server" 
                    ErrorMessage="Оцената мора да е помеѓу 6 и 10" 
                    MaximumValue="10" 
                    MinimumValue="6"
                    Type="Integer"
                    Display="None" ></asp:RangeValidator>
            </div>
        </div>
        <div class="row">
            <div class="col-xs-4 text-right">Датум:</div>
            <div class="col-xs-2">
                <asp:TextBox Enabled="false" ID="date" runat="server"></asp:TextBox></div>
            <div class="col-xs-6">
                <asp:CompareValidator 
                    class="text-danger"
                    ID="dateVal" 
                    ControlToValidate="date"
                    Type="Date"
                    Operator="LessThanEqual"
                    runat="server" 
                    ErrorMessage="Испитот мора да се полагал во минатото!"
                    Display="None" ></asp:CompareValidator>
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
                <asp:Label class="text-success" ID="message" runat="server" Text=""></asp:Label>
                <br />
                <asp:ValidationSummary  ID="greshki" runat="server"  />
            </div>
        </div>
    </div>
</asp:Content>
