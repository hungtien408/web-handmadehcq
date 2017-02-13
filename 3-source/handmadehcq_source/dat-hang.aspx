<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="dat-hang.aspx.cs" Inherits="dat_hang" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<%@ Register TagPrefix="uc2" TagName="asidecontact" Src="~/uc/aside-contact.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="container">
        <div class="ColContent">
            <div id="site" class="corner">
                <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<a href="gio-hang.aspx"> Giỏ hàng</a>/<span> Đặt hàng - Thanh toán</span>
            </div>
            <asp:ListView ID="lstDatHang" runat="server" DataSourceID="odsAddressBook"
                EnableModelValidation="True" OnItemCommand="ListView1_ItemCommand">
                <ItemTemplate>
                    <div class="cart-main">
                        <div class="title">
                            <h1>THÔNG TIN GIAO HÀNG</h1>
                        </div>
                        <div class="order-form">
                            <div class="form-w">
                                <label class="contact-lb">Họ &amp; Tên<span>*</span></label>
                                <div class="input-form">
                                    <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" Text='<%# Eval("FirstName") %>'></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-w">
                                <label class="contact-lb">Địa chỉ <span>*</span></label>
                                <div class="input-form">
                                    <asp:TextBox ID="txtAddress" CssClass="contact-textbox" runat="server" Text='<%# Eval("Address1") %>'></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-w">
                                <label class="contact-lb">Email <span>*</span></label>
                                <div class="input-form">
                                    <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server" Text='<%# Eval("Email") %>'></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-w">
                                <label class="contact-lb">Điện thoại di động <span>*</span></label>
                                <div class="input-form">
                                    <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server" Text='<%# Eval("HomePhone") %>'></asp:TextBox>
                                </div>
                            </div>
                            <%--<div class="form-w">
                                <label class="contact-lb">Mã xác nhận <span>*</span></label>
                                <div class="input-form" style="width: 150px;">
                                    <asp:RadCaptcha ID="RadCaptcha1" ForeColor="Red" Font-Bold="true" ValidationGroup="BookProduct"
                                        runat="server" ErrorMessage="+ Mã an toàn: không chính xác." ValidatedTextBoxID="txtVerifyCode"
                                        Display="Dynamic" CssClass="captcha">
                                        <captchaimage width="155" renderimageonly="True" />
                                    </asp:RadCaptcha>
                                    <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                </div>
                            </div>--%>
                        </div>
                    </div>
                    <div class="cart-main">
                        <div class="title">
                            <h1>HÌNH THỨC THANH TOÁN</h1>
                        </div>
                        <div class="radio-form">
                            <div class="radio-left">
                                <asp:RadioButton ID="rbtMoney" runat="server" CssClass="payment paywith-money" GroupName="checkradio" Checked="true" />
                                <div class="text-radio">
                                    <h2>THANH TOÁN KHI NHẬN HÀNG</h2>
                                </div>
                                <div class="radio-box">
                                    <p>Phí vận chuyển: <strong>10.000<sup>đ</sup></strong></p>
                                </div>
                            </div>
                            <div class="radio-right">
                                <asp:RadioButton ID="rbtEmail" runat="server" CssClass="payment paywith-email" GroupName="checkradio" />
                                <div class="text-radio">
                                    <h2>CHUYỂN KHOẢN NGÂN HÀNG</h2>
                                </div>
                                <div class="radio-box">
                                    <p><strong>Tài khoản Đông Á</strong> 0102574070 </p>
                                    <p>(Chi nhánh Bình Thạnh)</p>
                                    <p>Chủ TK: Lưu Lam Sơn</p>
                                    <p style="color: #df0000">Quý khách lưu ý:</p>
                                    <p>- Khi chuyển khoản quý khách vui lòng ghi rõ mã số đơn hàng.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="dathang-btn">
                        <%--<a href="./">HỦY</a>--%>
                        <%--<a href="dat-hang-thanh-cong.aspx">THANH TOÁN</a>--%>
                        <asp:LinkButton ID="lnkCancel" runat="server" CommandName="Cancel" CssClass="item">HỦY</asp:LinkButton>
                        <asp:LinkButton ID="lnkThanhToan" runat="server" CommandName="Payment" CssClass="item">THANH TOÁN</asp:LinkButton>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsAddressBook" runat="server" SelectMethod="AddressBookSelectAll" TypeName="TLLib.AddressBook">
                <SelectParameters>
                    <asp:Parameter Name="AddressBookID" Type="String" />
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="HomePhone" Type="String" />
                    <asp:Parameter Name="CellPhone" Type="String" />
                    <asp:Parameter Name="Fax" Type="String" />
                    <asp:SessionParameter Name="UserName" SessionField="UserName" Type="String" />
                    <asp:Parameter Name="Company" Type="String" />
                    <asp:Parameter Name="Address1" Type="String" />
                    <asp:Parameter Name="Address2" Type="String" />
                    <asp:Parameter Name="ZipCode" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="CountryID" Type="String" />
                    <asp:Parameter Name="ProvinceID" Type="String" />
                    <asp:Parameter Name="DistrictID" Type="String" />
                    <asp:Parameter Name="IsPrimary" Type="String" />
                    <asp:Parameter Name="IsPrimaryBilling" Type="String" />
                    <asp:Parameter Name="IsPrimaryShipping" Type="String" />
                    <asp:Parameter Name="RoleName" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="ColAside">
            <uc2:asidecontact runat="server" ID="asidecontact" />
        </div>
    </div>
</asp:Content>

