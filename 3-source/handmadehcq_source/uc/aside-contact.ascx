<%@ Control Language="C#" AutoEventWireup="true" CodeFile="aside-contact.ascx.cs" Inherits="assets_uc_aside_contact" %>
<div class="aside-box">
    <div class="tite-aside">
        <h1>THÔNG TIN LIÊN HỆ</h1>
    </div>
    <asp:ListView ID="lstInfoContact" runat="server"
        DataSourceID="odsInfoContact" EnableModelValidation="True">
        <ItemTemplate>
            <div class="aside-main">
                <div class="aside-content">
                    <h2>Điện thoại đặt hàng</h2>
                    <span><%# Eval("ProductName") %> </span>
                </div>
                <div class="aside-content">
                    <h2>Thời gian làm việc</h2>
                    <span><%# Eval("Description") %></span>
                </div>
                <div class="aside-content">
                    <h2>Hệ thống cửa hàng</h2>
                    <%# Eval("Content") %>
                </div>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsInfoContact" runat="server"
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
            <asp:Parameter DefaultValue="5" Name="CategoryID" Type="String" />
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
