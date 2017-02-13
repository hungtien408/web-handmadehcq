<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="dat-hang-thanh-cong.aspx.cs" Inherits="dat_hang_thanh_cong" %>

<%@ Register Src="~/assets/uc/aside-contact.ascx" TagPrefix="uc1" TagName="asidecontact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Handmade</title>
    <meta name="description" content="Handmade" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="container">
        <div class="ColContent">
            <div id="site" class="corner">
                <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<a href="#"> Giỏ hàng</a>/<a href="#">Đặt hàng - Thanh toán</a>/<span> Đặt hàng thành công</span>
            </div>
            <div class="thanhcong">
                <h1>ĐẶT HÀNG THÀNH CÔNG</h1>
                <p>Quý khách vừa đặt hàng thành công sản phẩm của <span style="color:#46bbc5;">Handmade</span>, Mã sản phẩm của quý khách là :<span class="code-product">123456789</span>.</p>
                <p>Sau khi shop xác nhận có hàng, sản phẩm sẽ được giao đến địa chỉ của quý khách trong 2 ngày. Mọi thông tin về đơn hàng sẽ được gửi tới mail của quý khách, vui lòng kiểm tra mail để biết thêm chi tiết</p>
            </div>
            <div class="dathang-btn">
                <a href="./">TIẾP TỤC MUA HÀNG</a>
            </div>
        </div>
        <div class="ColAside">
            <uc1:asidecontact runat="server" ID="asidecontact" />
        </div>
    </div>
</asp:Content>

