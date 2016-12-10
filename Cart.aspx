<%@ Page Language="C#" AutoEventWireup="true" Title="Cart" CodeFile="Cart.aspx.cs" MasterPageFile="~/Site.Master" Inherits="Cart" %>

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
    <div class="container">
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
        <asp:GridView ID="OrderGridView" runat="server" AutoGenerateColumns="False" DataSourceId="ProductDataSource" DataKeyNames="Id, Name, Price">
            <Columns>
                <asp:TemplateField HeaderText="Product Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="NameLabel" runat="server" Text='<%# OrderGridView.DataKeys[Container.DataItemIndex]["Name"] %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField FooterText="Total Quantity:" HeaderText="Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="QuantityTextbox" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="QuantityLabel" runat="server" Text='<%# Request.Cookies[OrderGridView.DataKeys[Container.DataItemIndex]["Id"].ToString()].Value %>' ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField FooterText="Total Price:" HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="PriceTextbox" runat="server"></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# OrderGridView.DataKeys[Container.DataItemIndex]["Price"] %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:ObjectDataSource ID="ProductDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByID" TypeName="DataSetTableAdapters.ProductTableAdapter">
            <SelectParameters>
                <asp:CookieParameter CookieName="ProductID" Name="id" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="OrderDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetAllData" TypeName="DataSetTableAdapters.OrderHeadTableAdapter" InsertMethod="Order_Insert">
            <InsertParameters>
                <asp:Parameter Name="ProductFK" Type="Int32" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="UserID" Type="String" />
            </InsertParameters>
        </asp:ObjectDataSource>

        <div class="col-md-12" style="">
            <asp:Button id="BuyButton" class="btn btn-secondary btn-lg btn-block" style='position: relative; width: 100%;' runat="server" Text="Buy >>>" onclick="BuyButton_Click"/>
        </div>
    </div>
</asp:Content>
