<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Test.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style type="text/css">
        .inline{ display: inline; }
    </style>
   
    
    <div class="container">
          <p for="DateFrom" style="left: 230px; margin-bottom:auto; display:inline; ">Date From:</p>
          <p for="DateTo"style="padding: 90px; left: 600px; display:inline; width: 2px; right: 40px; bottom: auto; top: auto; height: auto; position: inherit;">Date To:</p>
         

        <div class="row">
               
                <asp:Calendar ID="DateInitial" runat="server" cssClass="inline"></asp:Calendar>
              
                <asp:Calendar ID="DateEnd" runat="server" cssClass="inline"></asp:Calendar>
            
            <div class="col">
               <asp:Button ID="filterButton" runat="server" onclick="ButtonFilter_Click" Text="Filter" CssClass="btn btn-secondary btn-lg inlineBlock"></asp:Button>
            </div>
        </div>
    </div>


    <asp:GridView ID="gridvwpermissions" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="1253px" Font-Size="Large" Height="187px">
            <Columns>
                <asp:BoundField  DataField="EmployeeFirstName" HeaderText="First Name" />
                <asp:BoundField  DataField="EmployeeLastName" HeaderText="Last Name" />
                 <asp:BoundField  DataField="PermissionType.Description" HeaderText="Permission Type" />
                <asp:BoundField  DataField="PermissionDate" HeaderText="Permission Date" />

            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
</asp:Content>
