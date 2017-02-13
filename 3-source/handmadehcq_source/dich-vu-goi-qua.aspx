<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="dich-vu-goi-qua.aspx.cs" Inherits="dich_vu_goi_qua" %>
<%@ Register TagPrefix="uc2" TagName="asidecontact" Src="~/uc/aside-contact.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="container">
        <div class="ColContent">
            <asp:ListView ID="lstNews" runat="server"
                DataSourceID="odsNews" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="title">
                        <h1><%# Eval("ProductName") %></h1>
                    </div>
                    <div class="service-content">
                        <%# Eval("Content") %>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsNews" runat="server"
                SelectMethod="ProductSelectOne"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="2" Name="ProductID" QueryStringField="tt" Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
        <div class="ColAside">
            <uc2:asidecontact runat="server" ID="asidecontact" />
        </div>
    </div>
</asp:Content>

