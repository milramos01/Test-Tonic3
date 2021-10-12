<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Test._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2> Request Permission </h2>
    <p>Please, complete this form and submit the information</p>
    <form>
      <div class="form-group">
        <label for="firstName">
	    <asp:RequiredFieldValidator ID="requiredFieldValidatorFirstName" runat="server" Display="Dynamic" ErrorMessage="Complete your first name" ControlToValidate="firstName" SetFocusOnError="True" ForeColor = "Red" Text = "*"></asp:RequiredFieldValidator>
          First Name</label>
        <asp:TextBox ID="firstName" runat="server" CssClass="form-control" placeholder="Milagros" Width="899px" Columns="9" ></asp:TextBox>
		<asp:RegularExpressionValidator ID="RegExFirstName" Runat="server" ErrorMessage="Name not allowed" ForeColor = "Red" Display="Dynamic" ControlToValidate="firstName" ValidationExpression="^[a-zA-Z'.\s]{1,50}$"> </asp:RegularExpressionValidator>
      </div>
       <div class="form-group">
           <label for="lastName">
           <asp:RequiredFieldValidator ID="requiredFieldValidatorLastName" runat="server" Display="Dynamic" ErrorMessage="Complete your last name" ControlToValidate="lastName" SetFocusOnError="True" ForeColor = "Red" Text = "*"></asp:RequiredFieldValidator>
           Last Name</label>
           <asp:TextBox ID="lastName" runat="server" CssClass="form-control" placeholder="Ramos" Width="901px" ></asp:TextBox>
           <asp:RegularExpressionValidator ID="RegExLastName" Runat="server" ErrorMessage="Last name not allowed" ForeColor = "Red" Display="Dynamic" ControlToValidate="lastName" ValidationExpression="^[a-zA-Z'.\s]{1,50}$"> </asp:RegularExpressionValidator>
      </div>
      <div class="form-group">
        <label for="permissionType">
         <asp:RequiredFieldValidator ID="requiredFieldValidatorPermissionType" runat="server" Display="Dynamic" ErrorMessage="Select one permission type" ControlToValidate="permissionType" SetFocusOnError="True" ForeColor = "Red" Text = "*"></asp:RequiredFieldValidator>
          Permission Types</label>
        <asp:DropDownList ID="permissionType" runat="server" CssClass="form-control" Width="930px" >


        </asp:DropDownList>
      </div>
      <div class="form-group">
        <label for="permissionDate">Permission Date</label>
        <asp:Calendar ID="permissionDate" runat="server" SelectedDate="<%# DateTime.Now %>" OnSelectionChanged="Selection_Change">
            <OtherMonthDayStyle ForeColor="LightGray">
           </OtherMonthDayStyle> 

           <TitleStyle ForeColor="White">
           </TitleStyle>

           <DayStyle BackColor="gray">
           </DayStyle>

           <SelectedDayStyle BackColor="LightGray"
                             Font-Bold="True">
           </SelectedDayStyle>

        </asp:Calendar>
      </div>
      <div class="form-group">
         <asp:Button ID="submitButton" runat="server" onclick="ButtonSubmit_Click" Text="Submit" CssClass="btn btn-secondary btn-lg"></asp:Button>  
      </div>
    </form>
</asp:Content>
