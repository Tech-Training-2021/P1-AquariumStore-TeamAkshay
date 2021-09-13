<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AquariumStore_project1.Registration" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br /><br />
    <form>
        
        <div class="form-group row" >
        <asp:Label ID="l_name" for="tb_name" runat="server" Text="name" class="col-sm-2 col-form-label">Name :</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="tb_name" class="form-control" runat="server" placeholder ="ex : abc xyz"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="tb_name" runat="server" ForeColor="Red" ErrorMessage="Name is required." Display="Dynamic" ValidationGroup="reg_grp" ></asp:RequiredFieldValidator>
           
        </div>
            </div>
        
        <div class="form-group row">
        <asp:Label ID="l_gender" for="tb_rd_gendername" runat="server" Text="gender" class="col-sm-2 col-form-label">Gender :</asp:Label>
        <div class="col-sm-10">
            <div  >
            
            <%--<asp:Label ID="l_female" class="btn btn-secondary" runat="server" Text="female">
                <input type="radio" name="gender" id="r_female" value="1" runat="server" autocomplete="off"> 
            </asp:Label>
                <asp:Label ID="l_male" class="btn btn-secondary active" runat="server" Text="male">
                <input type="radio" name="gender" id="r_male" autocomplete="off" value="2" runat="server" checked> 
            </asp:Label>--%>
                <asp:RadioButtonList ID="gender_rb" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Female" Value="1" id="r_female" class="radio-inline"></asp:ListItem> 
                    <asp:ListItem Text="Male" Value="2" id="r_male" class="radio-inline"></asp:ListItem> 

                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="gender_rb" runat="server" ForeColor="Red" ErrorMessage="Gender is required." Display="Dynamic" ValidationGroup="reg_grp" ></asp:RequiredFieldValidator>
        

               
        </div>            
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
        <div class="form-group row" >
        <asp:Label ID="lb_username" for="tb_username" runat="server" Text="username" class="col-sm-2 col-form-label">Username :</asp:Label>
        <div class="col-sm-10">
        <asp:TextBox ID="tb_username" class="form-control" runat="server" placeholder ="ex : abc123"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="tb_username" runat="server" ForeColor="Red" ErrorMessage="Username is required." Display="Dynamic" ValidationGroup="reg_grp" ></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tb_username" ForeColor="Red" ErrorMessage="Username should have at least 5 characters." Display="Dynamic" ValidationExpression="^\w{5,}$"></asp:RegularExpressionValidator>

        </div>
            </div>
        <div class="form-group row">
    <asp:Label ID="l_pass" for="tb_pass" runat="server" type="password" class="col-sm-2 col-form-label">Password :</asp:Label>
    <div class="col-sm-10">
       <asp:TextBox ID="tb_pass" type="password" class="form-control" runat="server" placeholder ="ex : a*bc@$123"></asp:TextBox>
       <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="tb_pass" runat="server" ForeColor="Red" ErrorMessage="Password is required." Display="Dynamic" ValidationGroup="reg_grp"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="tb_pass" ForeColor="Red" ErrorMessage="Password should contain 8 character - one uppercase, one lowercase, one numeric value and a special character." Display="Dynamic" ValidationExpression="^.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!*@#$%^&+=]).*$"></asp:RegularExpressionValidator>

        </div>
        </div>
        <div class="form-group row">
    <asp:Label ID="l_checkPass" for="tb_checkPass" runat="server" type="password" class="col-sm-2 col-form-label">Retype Password :</asp:Label>
    <div class="col-sm-10">
            <asp:TextBox ID="tb_checkpass" type="password" class="form-control" runat="server" placeholder ="ex : a*bc@$123"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="tb_checkpass" runat="server" ForeColor="Red" ErrorMessage="Confirm Password is required." Display="Dynamic" ValidationGroup="reg_grp" ></asp:RequiredFieldValidator>
   <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="tb_checkpass" ControlToCompare="tb_pass" ForeColor="Red" ErrorMessage="Password Dosen't match "></asp:CompareValidator>
        </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
                <asp:Button ID="bt_register" runat="server" Text="REGISTER" class="btn btn-primary" OnClick="btn_Register_Click" ValidationGroup="reg_grp" CausesValidation="true"/>
               
            </div>      
          </div>
        <asp:Label runat ="server" ID ="lblMessage"></asp:Label>
        
    </form>

    
    
</span></span>

    
    
</asp:Content>
