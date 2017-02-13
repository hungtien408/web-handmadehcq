<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Handmade</title>
    <meta name="description" content="Handmade" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="container">
        <div class="productMain">
            <div class="wrapper-product">
                <div class="head-title bg-color">
                    <h1><span>SẢN PHẢM NỔI BẬT</span></h1>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs tabpro" role="tablist">
                        <li role="presentation"><a href="#tab1" onclick="initSlider(this)" data-toggle="tab">Sản phẩm mới</a></li>
                        <li role="presentation"><a href="#tab2" onclick="initSlider(this)" data-toggle="tab">Sản phẩm khuyến mãi</a></li>
                    </ul>
                </div>
                <div class="list-product">
                    <div class="tab-product">
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane product-main" id="tab1">
                                <div id="silderProduct1" class="owl-carousel">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/1.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="san-pham-chi-tiet.aspx">Móc Khóa Rubic Mini</a></div>
                                        <div class="item-price">25.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="san-pham-chi-tiet.aspx">Quả Cầu Nhà Tí Hon DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/3.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Dụng cụ đựng bút</a></div>
                                        <div class="item-price">35.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/4.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Ví tiền vải nỉ</a></div>
                                        <div class="item-price">75.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/5.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Bình hoa vải nỉ</a></div>
                                        <div class="item-price">105.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane product-main" id="tab2">
                                <div id="silderProject2" class="owl-carousel">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="san-pham-chi-tiet.aspx">Quả Cầu Nhà Tí Hon DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/3.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Dụng cụ đựng bút</a></div>
                                        <div class="item-price">35.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/4.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Ví tiền vải nỉ</a></div>
                                        <div class="item-price">75.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/5.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Bình hoa vải nỉ</a></div>
                                        <div class="item-price">105.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/1.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="san-pham-chi-tiet.aspx">Móc Khóa Rubic Mini</a></div>
                                        <div class="item-price">25.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ColContent">
            <div class="wrapper-product">
                <div class="head-title">
                    <h1>QUÀ TẶNG ĐỘC ĐÁO</h1>
                    <ul class="nav nav-tabs tabpro" role="tablist">
                        <li role="presentation"><a href="#taba" data-toggle="tab">Thú bông</a></li>
                        <li role="presentation"><a href="#tabb" data-toggle="tab">Hạt giống - Cây trồng</a></li>
                        <li role="presentation"><a href="#tabc" data-toggle="tab">Móc khóa</a></li>
                        <li role="presentation"><a href="#tabd" data-toggle="tab">Khung cảnh</a></li>
                        <li role="presentation"><a href="#tabe" data-toggle="tab">Hộp phát sáng</a></li>
                    </ul>
                </div>
                <div class="product-main">
                    <div class="tab-product">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane" id="taba">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="san-pham-chi-tiet.aspx">
                                                <img src="assets/images/6.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="san-pham-chi-tiet.aspx">Hộp phát sáng Good Luck</a></div>
                                        <div class="item-price">105.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/7.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="san-pham-chi-tiet.aspx">Cặp thỏ bông đáng yêu</a></div>
                                        <div class="item-price">145.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/8.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="san-pham-chi-tiet.aspx">Hộp cỏ 4 lá may mắn</a></div>
                                        <div class="item-price">35.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                        <div class="icon-new">
                                            <img src="assets/images/icon-new.png" alt="" />
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/9.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Khung ảnh treo tường</a></div>
                                        <div class="item-price">55.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tabb">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYb</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tabc">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYc</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tabd">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYd</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tabe">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYe</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <div class="wrapper-product">
                <div class="head-title">
                    <h1>TRANG SỨC</h1>
                    <ul class="nav nav-tabs tabpro" role="tablist">
                        <li role="presentation"><a href="#tab3" data-toggle="tab">Vòng tay</a></li>
                        <li role="presentation"><a href="#tab4" data-toggle="tab">Lắc tay</a></li>
                        <li role="presentation"><a href="#tab5" data-toggle="tab">Đồng hồ</a></li>
                        <li role="presentation"><a href="#tab6" data-toggle="tab">Nhẫn</a></li>
                    </ul>
                </div>
                <div class="product-main">
                    <div class="tab-product">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane" id="tab3">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/10.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Vòng cổ hình trái tim</a></div>
                                        <div class="item-price">95.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/11.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Lắc tay sao biển</a></div>
                                        <div class="item-price">85.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/12.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Nhẫn đeo đốt ngón tay</a></div>
                                        <div class="item-price">35.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/13.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Đồng hồ dây thổ cẩm</a></div>
                                        <div class="item-price">55.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                        <div class="icon-new">
                                            <img src="assets/images/icon-new.png" alt="" />
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab4">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYb</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab5">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYc</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab6">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYd</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>

            <div class="wrapper-product">
                <div class="head-title">
                    <h1>PHỤ KIỆN PARTY</h1>
                    <ul class="nav nav-tabs tabpro" role="tablist">
                        <li role="presentation"><a href="#tab7" data-toggle="tab">Nến trang trí</a></li>
                        <li role="presentation"><a href="#tab8" data-toggle="tab">Phụ kiện giáng sinh</a></li>
                        <li role="presentation"><a href="#tab9" data-toggle="tab">Phụ kiện Valentine</a></li>
                        <li role="presentation"><a href="#tab10" data-toggle="tab">Phụ kiện Haloween</a></li>
                    </ul>
                </div>
                <div class="product-main">
                    <div class="tab-product">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane" id="tab7">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/14.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Nến thơm mùa Giáng sinh</a></div>
                                        <div class="item-price">55.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/15.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Túi quà người tuyết</a></div>
                                        <div class="item-price">45.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/16.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Hộp quà tình yêu thần kì</a></div>
                                        <div class="item-price">55.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                         <div class="icon-new">
                                            <img src="assets/images/icon-new.png" alt="" />
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/17.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Cây cài ghê rợn</a></div>
                                        <div class="item-price">55.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab8">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYb</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab9">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYc</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab10">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYd</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="wrapper-product">
                <div class="head-title">
                    <h1>TRANG TRÍ NHÀ CỬA</h1>
                </div>
                <div class="product-main">
                    <div class="product-box product-main">
                        <div class="item">
                            <div class="item-img">
                                <a href="#">
                                    <img src="assets/images/18.jpg" alt="" /></a>
                            </div>
                            <div class="item-name"><a href="#">Tranh dán hình khung ảnh</a></div>
                            <div class="item-price">65.000<sup>đ</sup></div>
                            <div class="product-cart">
                                <a href="#">Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="#">
                                    <img src="assets/images/19.jpg" alt="" /></a>
                            </div>
                            <div class="item-name"><a href="#">Giá treo bằng gỗ</a></div>
                            <div class="item-price">245.000<sup>đ</sup></div>
                            <div class="product-cart">
                                <a href="#">Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="#">
                                    <img src="assets/images/20.jpg" alt="" /></a>
                            </div>
                            <div class="item-name"><a href="#">Giá treo chìa khóa</a></div>
                            <div class="item-price">45.000<sup>đ</sup></div>
                            <div class="product-cart">
                                <a href="#">Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="#">
                                    <img src="assets/images/21.jpg" alt="" /></a>
                            </div>
                            <div class="item-name"><a href="#">Gối trang trí hình thú</a></div>
                            <div class="item-price">75.000<sup>đ</sup></div>
                            <div class="product-cart">
                                <a href="#">Thêm vào giỏ hàng</a>
                            </div>
                        </div>
                    </div>
                    <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                </div>
            </div>

            <div class="wrapper-product">
                <div class="head-title">
                    <h1>VẬT DỤNG TIỆN ÍCH</h1>
                    <ul class="nav nav-tabs tabpro" role="tablist">
                        <li role="presentation"><a href="#tab11" data-toggle="tab">Vật dụng văn phòng</a></li>
                        <li role="presentation"><a href="#tab12" data-toggle="tab">Vật dụng gia đình</a></li>
                    </ul>
                </div>
                <div class="product-main">
                    <div class="tab-product">
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane" id="tab11">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/22.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Folder đựng hồ sơ</a></div>
                                        <div class="item-price">35.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/23.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Túi da đựng bút</a></div>
                                        <div class="item-price">45.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/24.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Giỏ đựng quần áo</a></div>
                                        <div class="item-price">85.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/25.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Bộ dụng cụ đựng muỗng nĩa</a></div>
                                        <div class="item-price">110.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="tab12">
                                <div class="product-box product-main">
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIYb</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="item-img">
                                            <a href="#">
                                                <img src="assets/images/img2.jpg" alt="" /></a>
                                        </div>
                                        <div class="item-name"><a href="#">Quả cầu Up House DIY</a></div>
                                        <div class="item-price">300.000<sup>đ</sup></div>
                                        <div class="product-cart">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="view-all"><a href="#">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ColAside">
            <div class="aside-all">
                <div class="tite-aside">
                    <h1>SẢN PHẨM BÁN CHẠY</h1>
                </div>
                <div class="product-news product-main">
                    <div class="silderProduct">
                        <div class="slide">
                            <div class="item">
                                <div class="item-img">
                                    <a href="#">
                                        <img src="assets/images/img1.jpg" alt="" /></a>
                                </div>
                                <div class="item-name"><a href="#">Cặp móc khóa ma dễ thương</a></div>
                                <div class="item-price">105.000<sup>đ</sup></div>
                                <div class="product-cart">
                                    <a href="#">Thêm vào giỏ hàng</a>
                                </div>
                                <div class="icon-hot">
                                    <img src="assets/images/icon-hot.png" alt="" />
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="item">
                                <div class="item-img">
                                    <a href="#">
                                        <img src="assets/images/img6.jpg" alt="" /></a>
                                </div>
                                <div class="item-name"><a href="#">Bộ 3 lọ nến thơm</a></div>
                                <div class="item-price">85.000<sup>đ</sup></div>
                                <div class="product-cart">
                                    <a href="#">Thêm vào giỏ hàng</a>
                                </div>
                                <div class="icon-hot">
                                    <img src="assets/images/icon-hot.png" alt="" />
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="item">
                                <div class="item-img">
                                    <a href="#">
                                        <img src="assets/images/img7.jpg" alt="" /></a>
                                </div>
                                <div class="item-name"><a href="#">Lắc tay đính hột bằng gốm</a></div>
                                <div class="item-price">65.000<sup>đ</sup></div>
                                <div class="product-cart">
                                    <a href="#">Thêm vào giỏ hàng</a>
                                </div>
                                <div class="icon-hot">
                                    <img src="assets/images/icon-hot.png" alt="" />
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="item">
                                <div class="item-img">
                                    <a href="#">
                                        <img src="assets/images/img8.jpg" alt="" /></a>
                                </div>
                                <div class="item-name"><a href="#">Chậu cây bằng giấy</a></div>
                                <div class="item-price">105.000<sup>đ</sup></div>
                                <div class="product-cart">
                                    <a href="#">Thêm vào giỏ hàng</a>
                                </div>
                                <div class="icon-hot">
                                    <img src="assets/images/icon-hot.png" alt="" />
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="item">
                                <div class="item-img">
                                    <a href="#">
                                        <img src="assets/images/img9.jpg" alt="" /></a>
                                </div>
                                <div class="item-name"><a href="#">Chậu cây thông</a></div>
                                <div class="item-price">95.000<sup>đ</sup></div>
                                <div class="product-cart">
                                    <a href="#">Thêm vào giỏ hàng</a>
                                </div>
                                <div class="icon-hot">
                                    <img src="assets/images/icon-hot.png" alt="" />
                                </div>
                            </div>
                        </div>
                        <div class="slide">
                            <div class="item">
                                <div class="item-img">
                                    <a href="#">
                                        <img src="assets/images/img10.jpg" alt="" /></a>
                                </div>
                                <div class="item-name"><a href="#">Giỏ đan lạ mắt</a></div>
                                <div class="item-price">65.000<sup>đ</sup></div>
                                <div class="product-cart">
                                    <a href="#">Thêm vào giỏ hàng</a>
                                </div>
                                <div class="icon-hot">
                                    <img src="assets/images/icon-hot.png" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

