<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="dat-hang.aspx.cs" Inherits="dat_hang" %>

<%@ Register Src="~/assets/uc/aside-contact.ascx" TagPrefix="uc1" TagName="asidecontact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Handmade</title>
    <meta name="description" content="Handmade" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="container">
        <div class="ColContent">
            <div id="site" class="corner">
                <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<a href="#"> Giỏ hàng</a>/<span> Đặt hàng - Thanh toán</span>
            </div>
            <div class="cart-main">
                <div class="title">
                    <h1>THÔNG TIN GIAO HÀNG</h1>
                </div>
                <div class="order-form">
                    <div class="form-w">
                        <label class="contact-lb">Họ &amp; Tên<span>*</span></label>
                        <div class="input-form">
                            <asp:TextBox ID="TextBox1" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-w">
                        <label class="contact-lb">Địa chỉ <span>*</span></label>
                        <div class="input-form">
                            <asp:TextBox ID="TextBox3" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                    </div>
                     <div class="form-w">
                        <label class="contact-lb">Email <span>*</span></label>
                        <div class="input-form">
                            <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-w">
                        <label class="contact-lb">Điện thoại di động <span>*</span></label>
                        <div class="input-form">
                            <asp:TextBox ID="TextBox4" CssClass="contact-textbox" runat="server" placeholder=""></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-w">
                        <label class="contact-lb">Mã xác nhận <span>*</span></label>
                        <div class="input-form" style="width:150px;">
                            <asp:TextBox ID="TextBox2" CssClass="contact-textbox" runat="server" placeholder="Mã xác nhận"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cart-main">
                <div class="title">
                    <h1>HÌNH THỨC THANH TOÁN</h1>
                </div>
                <div class="radio-form">
                    <div class="radio-left">
                        <input type="radio" name="gender" value="male">
                        <div class="text-radio">
                            <h2>THANH TOÁN KHI NHẬN HÀNG</h2>
                        </div>
                        <div class="radio-box">
                            <p>Phí vận chuyển: <strong>10.000<sup>đ</sup></strong></p>
                        </div>
                    </div>
                    <div class="radio-right">
                        <input type="radio" name="gender" value="male">
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
                <a href="./">HỦY</a>
                <a href="dat-hang-thanh-cong.aspx">THANH TOÁN</a>
            </div>
        </div>
        <div class="ColAside">
            <uc1:asidecontact runat="server" ID="asidecontact" />
        </div>
    </div>
</asp:Content>

