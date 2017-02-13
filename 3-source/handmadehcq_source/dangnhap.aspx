<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
                    <asp:TextBox ID="txtUserName" CssClass="input-lognin" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtUserName_WatermarkExtender" runat="server" Enabled="True"
                        WatermarkText="Tên đăng nhập" TargetControlID="txtUserName">
                    </asp:TextBoxWatermarkExtender>
                </div>
                <div class="form-group input-group">
                    <div class="icon-input"><span class="icon-pass"></span></div>
                    <asp:TextBox ID="txtPassword" CssClass="input-lognin" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtPassword_WatermarkExtender" runat="server" Enabled="True"
                        WatermarkText="Nhập Pass" TargetControlID="txtPassword">
                    </asp:TextBoxWatermarkExtender>
                </div>
                <div class="form-group password-helper">
                    <label class="label-pass">
                        <%--<input name="remember_me" id="remember_me" value="Y" checked="checked" type="checkbox">
                        Ghi nhớ đăng nhập--%></label>
                    <a href="recovery-password.aspx">Quên mật khẩu</a>
                </div>
                <div class="form-group password-helper">
                    <asp:Label ID="lblErrorLogin" runat="server" Text="" ForeColor="Red"></asp:Label>
                </div>
                <div class="form-group longin-btn">
                    <asp:Button ID="btnLoginButton" CssClass="button-btn" CommandName="Login" runat="server" Text="ĐĂNG NHẬP" ValidationGroup="LoginUserValidationGroup" OnClick="btnLoginButton_Click" />
                </div>
                <div class="form-group register-logn">
                    Bạn chưa có tài khoản? <a href="dangky.aspx">Đăng ký ngay</a>
                </div>
                <%--<div class="logn-bot">
                    <span>HOẶC ĐĂNG NHẬP BẰNG</span>
                    <a href="#">
                        <img src="assets/images/icon3.png" alt="" /></a>
                    <a href="#">
                        <img src="assets/images/icon4.png" alt="" /></a>
                </div>--%>
            </div>
        </div>
    </div>
</asp:Content>

