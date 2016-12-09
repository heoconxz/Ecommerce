<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cart.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Cart" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            background-color: #282828 !important;
        }

        .subHead {
            color: #000000;
        }

        .blueHead {
            color: #00a4cc;
        }
    </style>

    <div class="row">
        <div class="col-md-4">
            <h2 class="blueHead">Cart</h2>

            <asp:Repeater runat="server" ID="myRepeater">
               
                <ItemTemplate>
                    <tr>
                        <%--<td><%# DataBinder.Eval(Container.DataItem, "Name") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Item") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Price") %></td>
                    <td><%# DataBinder.Eval(Container.DataItem, "Quantity") %></td>>--%>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
                </table>
                </FooterTemplate>
            </asp:Repeater>
        </div>
    </div>
    <table>

        <tr>
            <th></th>
            <th>Item</th>
            <th>Price</th>
            <th>Quantity</th>
        </tr>

    </table>

    <div class="col-md-12" style="">
        <button type="button" class="btn btn-secondary btn-lg btn-block" style="position: relative; width: 100%;">Buy >>></button>
    </div>
</asp:Content>
