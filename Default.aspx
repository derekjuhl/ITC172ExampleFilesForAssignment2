<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!--**************************************************************************
        *The validation controls require downloading ASPNet.ScriptManager.JQuery *
        **************************************************************************
        in content area create a table for the entry form
        also add the validation controls for the fields where it is necessary
        Note that adding a regular expression validation to email does not
        make it required, you have to also add a required validation-->
    <table>
        <tr>
            <td>Last Name:</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvLastName" 
                runat="server" ErrorMessage="Last Name Required" ControlToValidate="txtLastName" CssClass="error">
                </asp:RequiredFieldValidator></td>
               </tr>
             <tr>
            <td>First Name:</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
            <td>&nbsp;</td>
        </tr>
         <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ErrorMessage="You must enter an email" ControlToValidate="txtEmail" CssClass="error">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ErrorMessage="Must enter a valid email" ControlToValidate="txtEmail" 
                    ValidateRequestMode="Enabled" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    CssClass="error">
               </asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                ErrorMessage="Must enter a password" ControlToValidate="txtPassword" CssClass="error">
                </asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td>Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" 
                    ErrorMessage="You must confirm the password" ControlToValidate="txtPassword"
                    CssClass="error">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvConfirm" runat="server" 
                    ErrorMessage="Your password does not match" 
                    ControlToValidate="txtConfirmPassword" 
                    ControlToCompare="txtPassword" CssClass="error">
                </asp:CompareValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Button ID="btnSumbit" runat="server" Text="Submit" OnClick="btnSumbit_Click" /></td>
            <td>
                <asp:Label ID="lblError" runat="server" Text="" CssClass="error"></asp:Label></td>
            <td>&nbsp;</td>
        </tr>
     
    </table>
</asp:Content>

