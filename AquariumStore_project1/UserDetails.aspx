<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="AquariumStore_project1.UserDetails" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form>
        <br /><br /><br />
        <div class="form-group row" >
        <asp:Label ID="lb_username" for="tb_username" runat="server" Text="username" class="col-sm-2 col-form-label">Username :</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="tb_username" class="form-control" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tb_username" runat="server" ForeColor="Red" ErrorMessage="Username is required." Display="Dynamic" ValidationGroup="reg_grp" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tb_username" ForeColor="Red" ErrorMessage="Username should have at least 5 characters." Display="Dynamic" ValidationExpression="^\w{5,}$"></asp:RegularExpressionValidator>

        </div>
            </div>
        <div class="form-group row" >
        <asp:Label ID="lb_role" for="tb_role" runat="server" Text="role" class="col-sm-2 col-form-label">Role :</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="tb_role" class="form-control" runat="server" ReadOnly="true" ></asp:TextBox>
       
        </div>
            </div>
        <div class="form-group row" >
        <asp:Label ID="l_name" for="tb_name" runat="server" Text="name" class="col-sm-2 col-form-label">Name :</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="tb_name" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_name" runat="server" ForeColor="Red" ErrorMessage="Name is required." Display="Dynamic" ValidationGroup="reg_grp" ></asp:RequiredFieldValidator>
           
        </div>
            </div>
        
        <div class="form-group row" >
        <asp:Label ID="lb_gender" for="tb_gender" runat="server" Text="gender" class="col-sm-2 col-form-label">Gender :</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="tb_gender" class="form-control" runat="server" ReadOnly="true"  ></asp:TextBox>
       
        </div>
            </div>
        <div class="form-group row">
        <asp:Label ID="l_email" for="tb_email" runat="server"  Text="email" class="col-sm-2 col-form-label">Email :</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="tb_email" class="form-control" type="email" runat="server" placeholder ="ex : abc@xyz.com"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="tb_email" runat="server" ForeColor="Red" ErrorMessage="Email is required." Display="Dynamic" ValidationGroup="reg_grp" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid email" ControlToValidate="tb_email"  Display="Dynamic" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>     

        </div>
        </div>
        <div class="form-group row">
        <asp:Label ID="l_phone" for="tb_phone" runat="server"  Text="email" class="col-sm-2 col-form-label">Phone Number :</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="tb_phone" class="form-control" type="tel" runat="server"   placeholder ="ex : 9876781234" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="tb_phone" runat="server" ForeColor="Red" ErrorMessage="Phone Number is required." Display="Dynamic" ValidationGroup="reg_grp" ></asp:RequiredFieldValidator>
       <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="tb_phone" ForeColor="Red" ErrorMessage="Phone number should have 10 digits only." Display="Dynamic" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>

            </div>
        </div>
        
        
        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
                <asp:Button ID="bt_update" runat="server" Text="UPDATE" class="btn btn-primary" OnClick="btn_update_Click" ValidationGroup="update_grp" CausesValidation="true"/>
               
            </div>      
          </div>
        <asp:Label runat ="server" ID ="lblMessage"></asp:Label>
        
    </form>

</asp:Content>
