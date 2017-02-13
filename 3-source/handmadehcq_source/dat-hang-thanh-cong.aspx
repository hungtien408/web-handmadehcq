<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="dat-hang-thanh-cong.aspx.cs" Inherits="dat_hang_thanh_cong" %>

<%@ Register TagPrefix="uc2" TagName="asidecontact" Src="~/uc/aside-contact.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="container">
        <div class="ColContent">
            <div id="site" class="corner">
                <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<a href="gio-hang.aspx"> Giỏ hàng</a>/<a href="#">Đặt hàng - Thanh toán</a>/<span> Đặt hàng thành công</span>
            </div>
            <div class="thanhcong">
                <h1>ĐẶT HÀNG THÀNH CÔNG</h1>
                <p>Quý khách vừa đặt hàng thành công sản phẩm của <span style="color:#46bbc5;">Handmade</span>, Mã sản phẩm của quý khách là :<span class="code-product"><%= Session["OrderNumber"].ToString() %></span>.</p>
                <p>Sau khi shop xác nhận có hàng, sản phẩm sẽ được giao đến địa chỉ của quý khách trong 2 ngày. Mọi thông tin về đơn hàng sẽ được gửi tới mail của quý khách, vui lòng kiểm tra mail để biết thêm chi tiết</p>
            </div>
            <div class="dathang-btn">
                <a href="~/" runat="server">TIẾP TỤC MUA HÀNG</a>
            </div>
        </div>
        <div class="ColAside">
            <uc2:asidecontact runat="server" ID="asidecontact" />
        </div>
    </div>
</asp:Content>

