<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="IT_AV02.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="Email">Email:</label>
                <asp:TextBox ID="Email" placeholder="Email" runat="server"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator
                    class="text-danger font-weight-bold"
                    ID="UsernameValidator" 
                    runat="server" 
                    ErrorMessage="Внесете валиден е-маил" ControlToValidate="Email"
                    ValidationExpression="\w+@\w+\.\w+">
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="ReqEmail" runat="server" ErrorMessage="Email е задолжително поле" ControlToValidate="Email">
                </asp:RequiredFieldValidator>
                <hr />
                <label for="Password">Password:</label>
                <asp:TextBox ID="Password" placeholder="Password" runat="server"></asp:TextBox>
                <br />
                <asp:RegularExpressionValidator 
                    ID="PasswordValidator" 
                    runat="server" 
                    ErrorMessage="Лозинката мора да има барем 8 карактери" 
                    ControlToValidate="Password" 
                    ValidationExpression="\S{8,}">
                </asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="ReqPass" runat="server" ErrorMessage="Email е задолжително поле" ControlToValidate="Password">
                </asp:RequiredFieldValidator>
                <br />
                <label for="ConfirmPassword">Password:</label>
                <asp:TextBox ID="ConfirmPassword" placeholder="ConfirmPassword" runat="server"></asp:TextBox>
                <br />
                <asp:CompareValidator 
                    ID="ConfirmValidator" 
                    runat="server" 
                    ErrorMessage="Лозинките не се совпаѓаат" 
                    ControlToValidate="ConfirmPassword" 
                    ValueToCompare="Password">
                </asp:CompareValidator>
                <asp:RequiredFieldValidator ID="ReqConf" runat="server" ErrorMessage="Email е задолжително поле" ControlToValidate="ConfirmPassword">
                </asp:RequiredFieldValidator>
                <hr />
                <asp:Button ID="Submit" runat="server" Text="Login" OnClick="Submit_Click" />
                <hr />
                <asp:Label ID="Welcome" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
