<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="gio-hang.aspx.cs" Inherits="gio_hang" %>

<%@ Register Src="~/assets/uc/aside-contact.ascx" TagPrefix="uc1" TagName="asidecontact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Handmade</title>
    <meta name="description" content="Handmade" />
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
                    <div class="cart-over">
                        <div class="table-book table-responsive">
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
                                    <td class="book-name1">Sản phẩm 1
                                    </td>
                                    <td class="book-price1">100.000<sup>đ</sup></td>
                                    <td class="book-number1">
                                        <asp:TextBox ID="txtQuantity" CssClass="text-number" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtQuantity"
                                            Display="Dynamic" ErrorMessage="Vui lòng nhập số!" ValidationExpression="^[0-9]+$"
                                            ValidationGroup="Information"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="book-money1">100.000<sup>đ</sup></td>
                                    <td class="book-cancel1">
                                        <a href="#"><span class="fa fa-times"></span></a>
                                    </td>

                                </tr>
                                <tr>
                                    <td class="book-name1">Sản phẩm 2
                                    </td>
                                    <td class="book-price1">200.000<sup>đ</sup></td>
                                    <td class="book-number1">
                                        <asp:TextBox ID="TextBox8" CssClass="text-number" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtQuantity"
                                            Display="Dynamic" ErrorMessage="Vui lòng nhập số!" ValidationExpression="^[0-9]+$"
                                            ValidationGroup="Information"></asp:RegularExpressionValidator>
                                    </td>
                                    <td class="book-money1">200.000<sup>đ</sup></td>
                                    <td class="book-cancel1">
                                        <a href="#"><span class="fa fa-times"></span></a>
                                    </td>

                                </tr>
                            </table>
                        </div>
                    </div>
                    <div class="money-all">Tổng tiền: <span>300.000<sup>đ</sup></span></div>
                    <div class="dathang-btn">
                        <a href="./">TIẾP TỤC MUA HÀNG</a>
                        <a href="dat-hang.aspx">ĐẶT HÀNG</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="ColAside">
            <uc1:asidecontact runat="server" ID="asidecontact" />
        </div>
    </div>
</asp:Content>

