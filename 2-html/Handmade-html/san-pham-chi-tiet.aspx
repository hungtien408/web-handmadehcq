<%@ Page Title="" Language="C#" MasterPageFile="~/site-menu.master" AutoEventWireup="true" CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Handmade</title>
    <meta name="description" content="Handmade" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="container">
        <div class="ColContent">
            <div id="site" class="corner">
                <a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<a href="#"> Trang trí nhà cửa</a>/<span> Quả cầu tí hon DIY</span>
            </div>
            <div class="product-detail-bg">
                <div id="slideProduct" class="product-slide">
                    <div class="slider-big">
                        <div class="slider slider-for">
                            <div class="item-big">
                                <img src="assets/images/product-big1.jpg" alt="" />
                            </div>
                            <div class="item-big">
                                <img src="assets/images/product-big1.jpg" alt="" />
                            </div>

                            <div class="item-big">
                                <img src="assets/images/product-big1.jpg" alt="" />
                            </div>

                            <div class="item-big">
                                <img src="assets/images/product-big1.jpg" alt="" />
                            </div>

                            <div class="item-big">
                                <img src="assets/images/product-big1.jpg" alt="" />
                            </div>

                            <div class="item-big">
                                <img src="assets/images/product-big1.jpg" alt="" />
                            </div>

                        </div>
                    </div>
                    <div class="slider-small">
                        <div class="slider slider-nav">
                            <div class="item-small">
                                <img src="assets/images/product-small1.jpg" alt="" />
                            </div>
                            <div class="item-small">
                                <img src="assets/images/product-small1.jpg" alt="" />
                            </div>
                            <div class="item-small">
                                <img src="assets/images/product-small1.jpg" alt="" />
                            </div>
                            <div class="item-small">
                                <img src="assets/images/product-small1.jpg" alt="" />
                            </div>
                            <div class="item-small">
                                <img src="assets/images/product-small1.jpg" alt="" />
                            </div>
                            <div class="item-small">
                                <img src="assets/images/product-small1.jpg" alt="" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-info">
                    <h1>Quả Cầu Nhà Tí Hon DIY</h1>
                    <div class="description">Hãy tự tay lắp ráp cho mình một căn nhà bé xinh xắn đầy đủ tiện nghi bé xíu đầy thơ mộng trên bãi cát trắng với hàng cây xanh ngát .... Về đêm chỉ cần gõ nhẹ chiếc bình ngôi nhà trên cát của bạn sẽ tỏa sáng lung linh đầy lãng mạn mà bạn chỉ có thể thấy trong truyện...!!!</div>
                    <div class="share-onl">
                        <img src="assets/images/onl.png" alt="" />
                    </div>
                    <div class="price-bg">
                        <div class="product-price">
                            Giá bán:<span> 300.000<sup>đ</sup></span>
                        </div>
                        <div class="product-cart">
                            <a href="#">Thêm vào giỏ hàng</a>
                        </div>
                        <div class="product-numbers">
                            Số lượng
                            <asp:TextBox ID="TextBox3" CssClass="input-numbers" runat="server" placeholder=""></asp:TextBox>
                            <asp:RegularExpressionValidator runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox3" ValidationExpression="[0-9]{1,50}">Vui lòng nhập số</asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="btn-muahang">
                        <asp:Button ID="Button2" CssClass="mua-btn" runat="server" Text="MUA HÀNG" />
                    </div>
                </div>
            </div>
            <div class="product-content">
                <div class="title">
                    <h1>MÔ TẢ SẢN PHẨM</h1>
                </div>
                <div class="service-content">
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac erat ut massa accumsan volutpat. Aenean nec vehicula lectus. Curabitur elementum, elit id sagittis placerat, nisi metus euismod odio, et pharetra tortor velit eu nunc. Sed vel placerat ante, ac lobortis massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin aliquet urna ac ante egestas auctor. Mauris nec nibh gravida, gravida eros ac, consequat nisi. Aenean tempus turpis tellus, vel porta purus imperdiet eu. Etiam id lacus rhoncus, facilisis mi sit amet, vulputate purus. Vestibulum accumsan imperdiet massa, ac consectetur velit pretium eget. Donec quis tincidunt neque. Mauris vehicula bibendum nisl sit amet sagittis.</p>
                    <br />
                    <p>
                        <img src="assets/images/hinh3.jpg" alt="" />
                    </p>
                    <br />
                    <p>Etiam tristique neque in lectus consequat rhoncus. Aliquam cursus leo at mi posuere suscipit. Donec finibus orci ut lectus euismod, eget scelerisque purus blandit. Sed vitae arcu non nunc lacinia dictum. Cras neque ante, ornare eu sem tristique, dapibus tincidunt erat. Praesent auctor quis mi at vulputate. Sed scelerisque congue ante, at fringilla tortor faucibus id. Donec ultrices erat tristique imperdiet maximus. Nullam quam ipsum, maximus posuere tempor ut, viverra sit amet purus. Nullam vel est quis diam faucibus feugiat. Aliquam tempus tempus blandit.</p>
                    <br />
                    <p>
                        <img src="assets/images/hinh4.jpg" alt="" />
                    </p>
                    <br />
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ac erat ut massa accumsan volutpat. Aenean nec vehicula lectus. Curabitur elementum, elit id sagittis placerat, nisi metus euismod odio, et pharetra tortor velit eu nunc. Sed vel placerat ante, ac lobortis massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin aliquet urna ac ante egestas auctor. Mauris nec nibh gravida, gravida eros ac, consequat nisi. Aenean tempus turpis tellus, vel porta purus imperdiet eu. Etiam id lacus rhoncus, facilisis mi sit amet, vulputate purus. Vestibulum accumsan imperdiet massa, ac consectetur velit pretium eget. Donec quis tincidunt neque. Mauris vehicula bibendum nisl sit amet sagittis.</p>
                </div>
            </div>
            <div class="product-all">
                <div class="title">
                    <h1>SẢN PHẨM CÙNG LOẠI</h1>
                </div>
                <div class="product-slide product-main">
                    <div id="SlideProduct" class="owl-carousel">
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
                            <div class="icon-hot">
                                <img src="assets/images/icon-hot.png" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="#">
                                    <img src="assets/images/img3.jpg" alt="" /></a>
                            </div>
                            <div class="item-name"><a href="#">Quả cầu Pandora Garden DIY</a></div>
                            <div class="item-price">300.000<sup>đ</sup></div>
                            <div class="product-cart">
                                <a href="#">Thêm vào giỏ hàng</a>
                            </div>
                            <div class="icon-hot">
                                <img src="assets/images/icon-hot.png" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="#">
                                    <img src="assets/images/img4.jpg" alt="" /></a>
                            </div>
                            <div class="item-name"><a href="#">Quả cầu Coffee Shop DIY</a></div>
                            <div class="item-price">300.000<sup>đ</sup></div>
                            <div class="product-cart">
                                <a href="#">Thêm vào giỏ hàng</a>
                            </div>
                            <div class="icon-hot">
                                <img src="assets/images/icon-hot.png" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="#">
                                    <img src="assets/images/img5.jpg" alt="" /></a>
                            </div>
                            <div class="item-name"><a href="#">Khu vườn tình yêu DIY</a></div>
                            <div class="item-price">300.000<sup>đ</sup></div>
                            <div class="product-cart">
                                <a href="#">Thêm vào giỏ hàng</a>
                            </div>
                            <div class="icon-hot">
                                <img src="assets/images/icon-hot.png" alt="" />
                            </div>
                        </div>
                        <div class="item">
                            <div class="item-img">
                                <a href="#">
                                    <img src="assets/images/img2.jpg" alt="" /></a>
                            </div>
                            <div class="item-name"><a href="#">Cặp móc khóa ma dễ thương</a></div>
                            <div class="item-price">300.000<sup>đ</sup></div>
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
        <div class="ColAside">
            <div class="col-main">
                <div class="col-img">
                    <a href="#">
                        <img src="assets/images/banner-main1.jpg" alt="" /></a>
                </div>
                <div class="col-img">
                    <a href="#">
                        <img src="assets/images/banner-main2.jpg" alt="" /></a>
                </div>
            </div>
            <div class="aside-box">
                <div class="tite-aside">
                    <h1>THÔNG TIN LIÊN HỆ</h1>
                </div>
                <div class="aside-main">
                    <div class="aside-content">
                        <h2>Điện thoại đặt hàng</h2>
                        <span>08 6260 1272 - 08 6260 1273 </span>
                    </div>
                    <div class="aside-content">
                        <h2>Thời gian làm việc</h2>
                        <span>Từ 8h - 21h tất cả các ngày trong tuần (kể cả ngày Lễ).</span>
                    </div>
                    <div class="aside-content">
                        <h2>Hệ thống cửa hàng</h2>
                        <span><span class="fa fa-map-marker"></span>111 Tên Lửa, P.Bình Trị Đông B, Quận Bình Tân, Tp.HCM</span>
                        <span><span class="fa fa-map-marker"></span>1041 Hậu Giang, Phường 5, Quận 6, Tp.HCM</span>
                        <span><span class="fa fa-map-marker"></span>748 Kinh Dương Vương, Phường 2, Quận 6, Tp.HCM</span>
                    </div>
                </div>
            </div>
            <div class="aside-all">
                <div class="tite-aside">
                    <h1>LỰA CHỌN MỚI CHO BẠN</h1>
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
                    </div>
                </div>
            </div>
        </div>
    </div>
    <style>
        #menu > ul {
            display: none;
        }

        #menu:hover > ul {
            display: block;
        }
    </style>
</asp:Content>

