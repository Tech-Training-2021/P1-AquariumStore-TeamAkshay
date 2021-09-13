<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AquariumStore_project1.Login" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br /><br />
    <form>
        <div class="form-group row">
    <asp:Label ID="l_username" for="tb_username" runat="server" Text="username" class="col-sm-2 col-form-label">Username :</asp:Label>
    <div class="col-sm-10">
            <asp:TextBox ID="tb_username" class="form-control" runat="server" placeholder ="ex : abc123"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_username" runat="server" ForeColor="Red" ErrorMessage="UserName is required." Display="Dynamic" ValidationGroup="login_grp" ></asp:RequiredFieldValidator>
              
        </div>
        </div>
        <div class="form-group row">
    <asp:Label ID="l_password" for="tb_pass" runat="server" type="password" class="col-sm-2 col-form-label">Password :</asp:Label>
    <div class="col-sm-10">
            <asp:TextBox id="tb_pass" type="password" runat="server"  class="form-control" /></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tb_pass" runat="server" ForeColor="Red" ErrorMessage="Password is required." Display="Dynamic" ValidationGroup="login_grp" ></asp:RequiredFieldValidator>
                   
    </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
                <asp:Button ID="bt_login" runat="server" Text="LOGIN" class="btn btn-primary" OnClick="btn_Add_Click" ValidationGroup="login_grp" CausesValidation="true"/>
               
            </div> 
          </div>
        <asp:Label ID="lbl_error" runat="server" Text=""></asp:Label>
    </form>
    <div>
        <p>  Don't have an account ,
<a href ="Registration.aspx">Sign Up</a> here. </p>
    </div>
</asp:Content>
