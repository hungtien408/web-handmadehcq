<%@ Page Title="" Language="C#" MasterPageFile="~/site-menu.master" AutoEventWireup="true" CodeFile="san-pham-chi-tiet.aspx.cs" Inherits="san_pham_chi_tiet" %>

<%@ Register TagPrefix="uc2" TagName="asidecontact" Src="~/uc/aside-contact.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="banner" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="Server">
    <asp:HiddenField ID="hdnSanPhamDetails" runat="server" />
    <a class="a-link-spct" href="<%= hdnSanPhamDetails.Value %>"></a>
    <div class="container">
        <div class="ColContent">
            <div id="site" class="corner">
                <%--<a id="A1" href="~/" runat="server"><span class="fa fa-home"></span></a>/<a href="#"> Trang trí nhà cửa</a>/<span> Quả cầu tí hon DIY</span>--%>
                <asp:ListView ID="lstBreadcrum" runat="server"
                    DataSourceID="odsBreadcrum" EnableModelValidation="True">
                    <ItemTemplate>
                        <%# "<a href='" + progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" + "'>" + Eval("ProductCategoryName") + "</a>/ "%>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <a id="A2" href="~/" runat="server"><span class="fa fa-home"></span></a>/
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBreadcrum" runat="server"
                    SelectMethod="ProductCategoryHierarchyToTopSelectAll"
                    TypeName="TLLib.ProductCategory">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="CurrentProductCategoryID" QueryStringField="pci" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <asp:Label ID="lblProductTitle" runat="server"></asp:Label>
            </div>

            <asp:ListView ID="lstProductDetails" runat="server"
                DataSourceID="odsProductDetails" EnableModelValidation="True" OnItemCommand="lstProductDetails_ItemCommand">
                <ItemTemplate>
                    <div class="product-detail-bg">
                        <div id="slideProduct" class="product-slide">
                            <div class="slider-big">
                                <div class="slider slider-for">
                                    <asp:ListView ID="lstImageBig" runat="server"
                                        DataSourceID="odsImageProduct" EnableModelValidation="True">
                                        <ItemTemplate>
                                            <div class="item-big">
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                                            </div>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                    <asp:ObjectDataSource ID="odsImageProduct" runat="server" SelectMethod="ProductImageSelectAll"
                                        TypeName="TLLib.ProductImage">
                                        <SelectParameters>
                                            <asp:QueryStringParameter QueryStringField="pi" Name="ProductID" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                            <asp:Parameter Name="Priority" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </div>
                            </div>
                            <div class="slider-small">
                                <div class="slider slider-nav">
                                    <asp:ListView ID="lstImageSmall" runat="server"
                                        DataSourceID="odsImageProduct" EnableModelValidation="True">
                                        <ItemTemplate>
                                            <div class="item-small">
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/album/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" />
                                            </div>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                        <div class="product-info">
                            <h1><%# Eval("ProductName") %></h1>
                            <div class="description"><%# Eval("Description") %></div>
                            <div class="share-onl">
                                <img src="assets/images/onl.png" alt="" />
                            </div>
                            <div class="price-bg">
                                <div class="product-price">
                                    Giá bán:<span> <%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " <sup>đ</sup>") : "0"%></span>
                                </div>
                                <div class="product-cart">
                                    <asp:LinkButton ID="lkbAddToCart" runat="server" CommandName="AddToCart">Thêm vào giỏ hàng</asp:LinkButton>
                                </div>
                                <div class="product-numbers">
                                    Số lượng
                                    <asp:TextBox ID="txtQuantity" CssClass="input-numbers" runat="server" Text="1"></asp:TextBox>
                                    <asp:RegularExpressionValidator runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtQuantity" ValidationExpression="[0-9]{1,50}">Vui lòng nhập số</asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div class="btn-muahang">
                                <asp:Button ID="btnMuaHang" CssClass="mua-btn" runat="server" Text="MUA HÀNG" CommandName="Buy" />
                            </div>
                            <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                            <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                            <asp:HiddenField ID="hdnProductCategory" Value='<%# Eval("CategoryID") %>' runat="server" />
                            <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price") %>' runat="server" />
                            <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                        </div>
                    </div>
                    <div class="product-content">
                        <div class="title">
                            <h1>MÔ TẢ SẢN PHẨM</h1>
                        </div>
                        <div class="service-content">
                            <%# Eval("Content") %>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProductDetails" runat="server"
                SelectMethod="ProductSelectOne" TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <div class="product-all">
                <div class="title">
                    <h1>SẢN PHẨM CÙNG LOẠI</h1>
                </div>
                <div class="product-slide product-main">
                    <div id="SlideProduct" class="owl-carousel">
                        <asp:ListView ID="lstProductSame" runat="server"
                            DataSourceID="odsProductSame" EnableModelValidation="True" OnItemCommand="lstProductSame_ItemCommand">
                            <ItemTemplate>
                                <div class="slide">
                                    <div class="item">
                                        <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                                        <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                                        <asp:HiddenField ID="hdnProductCategory" Value='<%# Eval("CategoryID") %>' runat="server" />
                                        <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price") %>' runat="server" />
                                        <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                        <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                                        <div class="item-img">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" /></a>
                                        </div>
                                        <div class="item-name"><a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></div>
                                        <div class="item-price"><%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " <sup>đ</sup>") : "0"%></div>
                                        <div class="product-cart">
                                            <asp:LinkButton ID="lkbAddToCart" runat="server" CommandName="AddToCart">Thêm vào giỏ hàng</asp:LinkButton>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProductSame" runat="server"
                            SelectMethod="ProductSameSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter Name="RerultCount" Type="String" DefaultValue="10" />
                                <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="pi" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
                    </div>
                </div>
            </div>
        </div>
        <div class="ColAside">
            <div class="col-main">
                <asp:ListView ID="lstBannerSub" runat="server"
                    DataSourceID="odsBannerSub" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="col-img">
                            <a href='<%# !string.IsNullOrEmpty(Eval("Website").ToString()) ? Eval("Website") : "javascript:void(0);" %>' runat="server">
                                <img alt='<%# Eval("FileName") %>' src='<%# "~/res/advertisement/" + Eval("FileName") %>' visible='<%# string.IsNullOrEmpty(Eval("FileName").ToString()) ? false : true %>' runat="server" /></a>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsBannerSub" runat="server"
                    SelectMethod="AdsBannerSelectAll"
                    TypeName="TLLib.AdsBanner">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter DefaultValue="6" Name="AdsCategoryID" Type="String" />
                        <asp:Parameter Name="CompanyName" Type="String" />
                        <asp:Parameter Name="Website" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
            <uc2:asidecontact runat="server" ID="asidecontact" />
            <div class="aside-all">
                <div class="tite-aside">
                    <h1>LỰA CHỌN MỚI CHO BẠN</h1>
                </div>
                <div class="product-news product-main">
                    <div class="silderProduct">
                        <asp:ListView ID="lstProductNew" runat="server" OnItemCommand="lstProductNew_ItemCommand"
                            DataSourceID="odsProductNew" EnableModelValidation="True">
                            <ItemTemplate>
                                <div class="slide">
                                    <div class="item">
                                        <asp:HiddenField ID="hdnProductID" Value='<%# Eval("ProductID") %>' runat="server" />
                                        <asp:HiddenField ID="hdnImageName" Value='<%# Eval("ImageName") %>' runat="server" />
                                        <asp:HiddenField ID="hdnProductCategory" Value='<%# Eval("CategoryID") %>' runat="server" />
                                        <asp:HiddenField ID="hdnPrice" Value='<%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "0" : Eval("Price") %>' runat="server" />
                                        <asp:Label ID="lblProductName" Visible="False" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                                        <asp:Label ID="lblProductNameEn" Visible="False" runat="server" Text='<%# Eval("ProductNameEn") %>'></asp:Label>
                                        <div class="item-img">
                                            <a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                                <img alt='<%# Eval("ImageName") %>' src='<%# "~/res/product/" + Eval("ImageName") %>' visible='<%# string.IsNullOrEmpty(Eval("ImageName").ToString()) ? false : true %>' runat="server" /></a>
                                        </div>
                                        <div class="item-name"><a href='<%# progressTitle(Eval("ProductName")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'><%# Eval("ProductName") %></a></div>
                                        <div class="item-price"><%# !string.IsNullOrEmpty(Eval("Price").ToString()) ? (string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " <sup>đ</sup>") : "0"%> </div>
                                        <div class="product-cart">
                                            <asp:LinkButton ID="lkbAddToCart" runat="server" CommandName="AddToCart">Thêm vào giỏ hàng</asp:LinkButton>
                                        </div>
                                        <div class="icon-hot">
                                            <img src="assets/images/icon-hot.png" alt="" />
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <span runat="server" id="itemPlaceholder" />
                            </LayoutTemplate>
                        </asp:ListView>
                        <asp:ObjectDataSource ID="odsProductNew" runat="server"
                            SelectMethod="ProductSelectAll"
                            TypeName="TLLib.Product">
                            <SelectParameters>
                                <asp:Parameter Name="StartRowIndex" Type="String" />
                                <asp:Parameter Name="EndRowIndex" Type="String" />
                                <asp:Parameter Name="Keyword" Type="String" />
                                <asp:Parameter Name="ProductName" Type="String" />
                                <asp:Parameter Name="Description" Type="String" />
                                <asp:Parameter Name="PriceFrom" Type="String" />
                                <asp:Parameter Name="PriceTo" Type="String" />
                                <asp:Parameter DefaultValue="3" Name="CategoryID" Type="String" />
                                <asp:Parameter Name="ManufacturerID" Type="String" />
                                <asp:Parameter Name="OriginID" Type="String" />
                                <asp:Parameter Name="Tag" Type="String" />
                                <asp:Parameter Name="InStock" Type="String" />
                                <asp:Parameter Name="IsHot" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsNew" Type="String" />
                                <asp:Parameter Name="IsBestSeller" Type="String" />
                                <asp:Parameter Name="IsSaleOff" Type="String" />
                                <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                <asp:Parameter Name="FromDate" Type="String" />
                                <asp:Parameter Name="ToDate" Type="String" />
                                <asp:Parameter Name="Priority" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                            </SelectParameters>
                        </asp:ObjectDataSource>
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

