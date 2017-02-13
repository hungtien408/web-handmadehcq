<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="gio-hang.aspx.cs" Inherits="gio_hang" %>

<%@ Register TagPrefix="uc2" TagName="asidecontact" Src="~/uc/aside-contact.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="container">
        <div class="ColContent">
            <div id="site" class="corner">
                <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<span> Giỏ hàng</span>
            </div>
            <div class="cart-main">
                <div class="title">
                    <h1>GIỎ HÀNG</h1>
                </div>
                <div class="cart-modal">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="cart-over">
                                <div class="table-book table-responsive">
                                    <asp:ListView ID="ListView1" runat="server" DataSourceID="odsCart" EnableModelValidation="True"
                                        OnItemCommand="ListView1_ItemCommand" OnDataBound="ListView1_DataBound">
                                        <ItemTemplate>
                                            <tr>
                                                <td class="book-name1"><%# Eval("ProductName") %></td>
                                                <td class="book-price1"><%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " <sup>đ</sup>") : "0"%></td>
                                                <td class="book-number1">
                                                    <asp:TextBox ID="txtQuantity" CssClass="text-number" runat="server" Text='<%# Eval("Quantity") %>' OnTextChanged="txtQuantity_TextChanged" AutoPostBack="true"></asp:TextBox>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtQuantity"
                                                        Display="Dynamic" ErrorMessage="Vui lòng nhập số!" ValidationExpression="^[0-9]+$"
                                                        ValidationGroup="Information"></asp:RegularExpressionValidator>
                                                </td>
                                                <td class="book-money1"><%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0<sup>đ</sup>" : (string.Format("{0:##,###.##}", Convert.ToInt16(string.IsNullOrEmpty(Eval("Quantity").ToString()) ? 0 : Eval("Quantity")) * Convert.ToDouble(string.IsNullOrEmpty(Eval("Price").ToString()) ? 0 : Eval("Price"))).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + " <sup>đ</sup>"%></td>
                                                <td class="book-cancel1">
                                                    <asp:LinkButton CommandName="Remove" OnClientClick="return confirm('Bạn muốn xóa sản phẩm này?')"
                                                        ID="LinkButton1" runat="server"><span class="fa fa-times"></span></asp:LinkButton>
                                                </td>
                                            </tr>
                                            <asp:HiddenField ID="hdnCartProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                                            <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                                            <asp:HiddenField ID="hdnQuantity" runat="server" Value='<%# Eval("Quantity") %>' />
                                            <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price") %>' runat="server" />
                                            <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                            <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                                        </ItemTemplate>
                                        <EmptyDataTemplate>
                                            <div class="note">
                                                Chưa có sản phẩm trong giỏ hàng của bạn! <a href="san-pham.aspx">Mua sản phẩm</a>.
                                            </div>
                                        </EmptyDataTemplate>
                                        <LayoutTemplate>
                                            <table>
                                                <tr>
                                                    <th class="book-name">Sản phẩm
                                                    </th>
                                                    <th class="book-price">Đơn giá</th>
                                                    <th class="book-number">Số lượng
                                                    </th>
                                                    <th class="book-money">Thành tiền
                                                    </th>
                                                    <th class="book-cancel">Hủy
                                                    </th>
                                                </tr>
                                                <tr>
                                                    <span runat="server" id="itemPlaceholder"></span>
                                                </tr>

                                            </table>
                                        </LayoutTemplate>
                                    </asp:ListView>
                                    <asp:ObjectDataSource ID="odsCart" runat="server" SelectMethod="Cart" TypeName="ShoppingCart"></asp:ObjectDataSource>
                                </div>
                            </div>
                            <div class="money-all">
                                Tổng tiền: <span>
                                    <asp:Label ID="lblTotalPrice" runat="server"></asp:Label>
                                    <asp:HiddenField ID="hdnTotalPrice" runat="server" />
                                    <sup>đ</sup></span>
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    <div class="dathang-btn">
                        <a href="~/" runat="server">TIẾP TỤC MUA HÀNG</a>
                        <a href="dat-hang.aspx">ĐẶT HÀNG</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="ColAside">
            <uc2:asidecontact runat="server" ID="asidecontact" />
        </div>
    </div>
</asp:Content>

