<%@ Page Title="" Language="C#" MasterPageFile="~/lesson4.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="lesson5._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>ASP.NET Input Validation</h3>
    <h6>All the fields are required.</h6>
    <div class="form-group">
        <label for="txtName" class="col-sm-3">Name:</label>
        <asp:TextBox ID="txtName"  runat="server" />
        <asp:RequiredFieldValidator  runat="server" 
            ErrorMessage="Required" ControlToValidate="txtName" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="txtPassword" class="col-sm-3">Password:</label>
        <asp:TextBox ID="txtPassword"  runat="server" TextMode="Password" />
        <asp:RequiredFieldValidator  runat="server" 
            ErrorMessage="Required" ControlToValidate="txtPassword" CssClass="alert alert-danger" Display="Dynamic"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match" 
            CssClass="label label-danger" ControlToValidate="txtPassword" ControlToCompare="txtConfirm" Type="String" Operator="Equal"
            Display="Dynamic"></asp:CompareValidator>
    </div>
     <div class="form-group">
        <label for="txtConfirm" class="col-sm-3">Confirm Password:</label>
        <asp:TextBox ID="txtConfirm"  runat="server" TextMode="Password" />
         <asp:RequiredFieldValidator  runat="server" 
            ErrorMessage="Required" ControlToValidate="txtConfirm" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label for="txAge"  class="col-sm-3">Age:</label>
        <asp:TextBox ID="txtAge"  runat="server" />
        <asp:RequiredFieldValidator  runat="server" 
            ErrorMessage="Required" ControlToValidate="txtAge" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
        <asp:RangeValidator  runat="server" ErrorMessage="Enter  a # between 1 and 120 "
          ControlToValidate="txtAge" CssClass="label label-danger" MinimumValue="1"
          MaximumValue="120" Type="Integer" Display="Dynamic"></asp:RangeValidator>
    </div>
    <asp:Button ID="btnSumbit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
    <asp:Label ID="lblMessage" runat="server" />
</asp:Content>
