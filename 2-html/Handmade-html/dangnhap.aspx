<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Handmade</title>
    <meta name="description" content="Handmade" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="banner" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="lognin-bg">
        <div class="container">
            <div class="lognin">
                <h1>ĐĂNG NHẬP</h1>
                <div class="form-group input-group">
                    <div class="icon-input"><span class="icon-user"></span></div>
                    <asp:TextBox ID="TextBox5" CssClass="input-lognin" runat="server" placeholder="Tên đăng nhập"></asp:TextBox>
                </div>
                <div class="form-group input-group">
                    <div class="icon-input"><span class="icon-pass"></span></div>
                    <asp:TextBox ID="TextBox6" CssClass="input-lognin" runat="server" placeholder="Mật khẩu"></asp:TextBox>
                </div>
                <div class="form-group password-helper">
                    <label class="label-pass">
                        <input name="remember_me" id="Checkbox1" value="Y" checked="checked" type="checkbox">
                        Ghi nhớ đăng nhập</label>
                    <a href="#">Quên mật khẩu</a>
                </div>
                <div class="form-group longin-btn">
                    <asp:Button ID="Button5" CssClass="button-btn" runat="server" Text="ĐĂNG NHẬP" />
                </div>
                <div class="register-logn">
                    Bạn chưa có tài khoản? <a href="#">Đăng ký ngay</a>
                </div>
                <div class="logn-bot">
                    <span>HOẶC ĐĂNG NHẬP BẰNG</span>
                    <a href="#">
                        <img src="assets/images/icon3.png" alt="" /></a>
                    <a href="#">
                        <img src="assets/images/icon4.png" alt="" /></a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

