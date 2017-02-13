<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register TagPrefix="uc1" TagName="sanphambanchay" Src="~/uc/san-pham-ban-chay.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
                                    <asp:ListView ID="lstProductNew" runat="server" OnItemCommand="lstProductNew_ItemCommand"
                                        DataSourceID="odsProductNew" EnableModelValidation="True">
                                        <ItemTemplate>
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
                                <div class="view-all"><a href="san-pham-moi.aspx">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                            <div role="tabpanel" class="tab-pane product-main" id="tab2">
                                <div id="silderProject2" class="owl-carousel">
                                    <asp:ListView ID="lstProductSale" runat="server" OnItemCommand="lstProductSale_ItemCommand"
                                        DataSourceID="odsProductSale" EnableModelValidation="True">
                                        <ItemTemplate>
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
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                    <asp:ObjectDataSource ID="odsProductSale" runat="server"
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
                                            <asp:Parameter Name="IsNew" Type="String" />
                                            <asp:Parameter Name="IsBestSeller" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="IsSaleOff" Type="String" />
                                            <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                                            <asp:Parameter Name="FromDate" Type="String" />
                                            <asp:Parameter Name="ToDate" Type="String" />
                                            <asp:Parameter Name="Priority" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                                            <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </div>
                                <div class="view-all"><a href="khuyen-mai.aspx">Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="ColContent">
            <asp:ListView ID="lstProductCategory" runat="server"
                DataSourceID="odsProductCategory" EnableModelValidation="True" OnItemDataBound="lstProductCategory_ItemDataBound">
                <ItemTemplate>
                    <div class="wrapper-product">
                        <div class="head-title">
                            <h1><%# Eval("ProductCategoryName") %></h1>
                            <asp:HiddenField ID="hdnParentIDSub" runat="server" Value='<%# Eval("ProductCategoryID")%>' />
                            <asp:ListView ID="lstProductCategorySub" runat="server"
                                DataSourceID="odsProductCategorySub" EnableModelValidation="True">
                                <ItemTemplate>
                                    <li role="presentation"><a href='<%# "#tab" + Eval("ProductCategoryID") %>' data-toggle="tab"><%# Eval("ProductCategoryName") %></a></li>
                                </ItemTemplate>
                                <LayoutTemplate>
                                    <ul class="nav nav-tabs tabpro" role="tablist">
                                        <li runat="server" id="itemPlaceholder"></li>
                                    </ul>
                                </LayoutTemplate>
                            </asp:ListView>
                            <asp:ObjectDataSource ID="odsProductCategorySub" runat="server"
                                SelectMethod="ProductCategorySelectAll"
                                TypeName="TLLib.ProductCategory">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="hdnParentIDSub" Name="parentID" PropertyName="Value" Type="Int32" />
                                    <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                                    <asp:Parameter Name="IsShowOnMenu" Type="String" />
                                    <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </div>
                        <div class="product-main">
                            <div class="tab-product">
                                <div class="tab-content">
                                    <asp:ListView ID="lstProductCategorySub2" runat="server"
                                        DataSourceID="odsProductCategorySub" EnableModelValidation="True">
                                        <ItemTemplate>
                                            <div role="tabpanel" class="tab-pane" id='<%# "tab" + Eval("ProductCategoryID") %>'>
                                                <div class="product-box product-main">
                                                    <asp:HiddenField ID="hdnProductCategoryID" runat="server" Value='<%# Eval("ProductCategoryID")%>' />
                                                    <asp:ListView ID="lstProduct" runat="server" OnItemCommand="lstProduct_ItemCommand"
                                                        DataSourceID="odsProduct" EnableModelValidation="True">
                                                        <ItemTemplate>
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
                                                        </ItemTemplate>
                                                        <LayoutTemplate>
                                                            <span runat="server" id="itemPlaceholder" />
                                                        </LayoutTemplate>
                                                    </asp:ListView>
                                                    <asp:ObjectDataSource ID="odsProduct" runat="server"
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
                                                            <asp:ControlParameter ControlID="hdnProductCategoryID" DefaultValue="3" PropertyName="Value" Name="CategoryID" Type="String" />
                                                            <asp:Parameter Name="ManufacturerID" Type="String" />
                                                            <asp:Parameter Name="OriginID" Type="String" />
                                                            <asp:Parameter Name="Tag" Type="String" />
                                                            <asp:Parameter Name="InStock" Type="String" />
                                                            <asp:Parameter Name="IsHot" Type="String" />
                                                            <asp:Parameter Name="IsNew" Type="String" />
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
                                                <div class="view-all"><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                                            </div>
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                </div>
                            </div>
                        </div>
                        <asp:Panel ID="pnlProduct" runat="server" Visible="false">
                            <div class="product-main">
                                <div class="product-box product-main">
                                    <asp:HiddenField ID="hdnProductCategoryID2" runat="server" Value='<%# Eval("ProductCategoryID")%>' />
                                    <asp:ListView ID="lstProduct2" runat="server" OnItemCommand="lstProduct2_ItemCommand"
                                        DataSourceID="odsProduct2" EnableModelValidation="True">
                                        <ItemTemplate>
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
                                        </ItemTemplate>
                                        <LayoutTemplate>
                                            <span runat="server" id="itemPlaceholder" />
                                        </LayoutTemplate>
                                    </asp:ListView>
                                    <asp:ObjectDataSource ID="odsProduct2" runat="server"
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
                                            <asp:ControlParameter ControlID="hdnProductCategoryID2" PropertyName="Value" Name="CategoryID" Type="String" />
                                            <asp:Parameter Name="ManufacturerID" Type="String" />
                                            <asp:Parameter Name="OriginID" Type="String" />
                                            <asp:Parameter Name="Tag" Type="String" />
                                            <asp:Parameter Name="InStock" Type="String" />
                                            <asp:Parameter Name="IsHot" Type="String" />
                                            <asp:Parameter Name="IsNew" Type="String" />
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
                                <div class="view-all"><a href='<%# progressTitle(Eval("ProductCategoryName")) + "-pci-" + Eval("ProductCategoryID") + ".aspx" %>'>Xem tất cả</a> <span class="fa fa-angle-double-right"></span></div>
                            </div>
                        </asp:Panel>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProductCategory" runat="server"
                SelectMethod="ProductCategorySelectAll"
                TypeName="TLLib.ProductCategory">
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="parentID" Type="Int32" />
                    <asp:Parameter DefaultValue="1" Name="increaseLevelCount" Type="Int32" />
                    <asp:Parameter Name="IsShowOnMenu" Type="String" />
                    <asp:Parameter DefaultValue="True" Name="IsShowOnHomePage" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="ColAside">
            <uc1:sanphambanchay runat="server" ID="sanphambanchay" />
        </div>
    </div>
</asp:Content>

