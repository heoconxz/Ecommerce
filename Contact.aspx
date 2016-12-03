<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Contact Us</h3>
    <p>
        If you have any questions, feel free to contact us. We operate between noon and 4pm.
    </p>
    <address>
       208 8th St. Sw Unit 1738<br />
        Orange City, IA 51041<br />
        <abbr title="Phone">P:</abbr>
        520.123.4567
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:RaiderTrade@example.com">Support@RaiderTrade.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:RaiderTrade@example.com">Marketing@RaiderTrade.com</a>
    </address>
</asp:Content>
