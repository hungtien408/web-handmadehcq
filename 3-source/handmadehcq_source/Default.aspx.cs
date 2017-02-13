﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Handmade";
            var meta = new HtmlMeta() { Name = "description", Content = "Handmade" };
            Header.Controls.Add(meta);
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
    protected void lstProductNew_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        
        var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;
        var ProductName = (item.FindControl("lblProductName") as Label).Text;
        var ProductNameEn = (item.FindControl("lblProductNameEn") as Label).Text;
        var ImageName = (item.FindControl("hdnImageName") as HiddenField).Value;
        var ProductCode = "";
        var Quantity = "1";// (item.FindControl("inQuantity") as TextBox).Text;//(item.FindControl("hdnQuantitySale") as HiddenField).Value;
        string hdnPrice = (item.FindControl("hdnPrice") as HiddenField).Value;
        string strProductID = ProductID.Substring(0, ProductID.IndexOf(","));
        string strPrice = hdnPrice.Substring(0, hdnPrice.IndexOf(","));
        string strImage = ImageName.Substring(0, ImageName.IndexOf(","));
        double Price = Convert.ToDouble(strPrice);
        double SavePrice = 0;// Convert.ToDouble((item.FindControl("hdnSavePrice") as HiddenField).Value);

        
        
        if (cmd == "AddToCart")
        {
            var oShoppingCart = new ShoppingCart();
            oShoppingCart.CreateCart(
                strProductID,
                strImage,
                ProductName,
                ProductNameEn,
                ProductCode,
                "",
                Price,
                SavePrice,
                "",
                Quantity
                );
        }
    }
    protected void lstProductSale_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;

        var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;
        var ProductName = (item.FindControl("lblProductName") as Label).Text;
        var ProductNameEn = (item.FindControl("lblProductNameEn") as Label).Text;
        var ImageName = (item.FindControl("hdnImageName") as HiddenField).Value;
        var ProductCode = "";
        var Quantity = "1";// (item.FindControl("inQuantity") as TextBox).Text;//(item.FindControl("hdnQuantitySale") as HiddenField).Value;
        string hdnPrice = (item.FindControl("hdnPrice") as HiddenField).Value;
        string strProductID = ProductID.Substring(0, ProductID.IndexOf(","));
        string strPrice = hdnPrice.Substring(0, hdnPrice.IndexOf(","));
        string strImage = ImageName.Substring(0, ImageName.IndexOf(","));
        double Price = Convert.ToDouble(strPrice);
        double SavePrice = 0;// Convert.ToDouble((item.FindControl("hdnSavePrice") as HiddenField).Value);

        if (cmd == "AddToCart")
        {
            var oShoppingCart = new ShoppingCart();
            oShoppingCart.CreateCart(
                strProductID,
                strImage,
                ProductName,
                ProductNameEn,
                ProductCode,
                "",
                Price,
                SavePrice,
                "",
                Quantity
                );
        }
    }
    protected void lstProduct_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;

        var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;
        var ProductName = (item.FindControl("lblProductName") as Label).Text;
        var ProductNameEn = (item.FindControl("lblProductNameEn") as Label).Text;
        var ImageName = (item.FindControl("hdnImageName") as HiddenField).Value;
        var ProductCode = "";
        var Quantity = "1";// (item.FindControl("inQuantity") as TextBox).Text;//(item.FindControl("hdnQuantitySale") as HiddenField).Value;
        string a = (item.FindControl("hdnPrice") as HiddenField).Value;
        double Price = Convert.ToDouble((item.FindControl("hdnPrice") as HiddenField).Value);
        double SavePrice = 0;// Convert.ToDouble((item.FindControl("hdnSavePrice") as HiddenField).Value);

        if (cmd == "AddToCart")
        {
            var oShoppingCart = new ShoppingCart();
            oShoppingCart.CreateCart(ProductID,
                ImageName,
                ProductName,
                ProductNameEn,
                ProductCode,
                "",
                Price,
                SavePrice,
                "",
                Quantity
                );
        }
    }
    protected void lstProduct2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;

        var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;
        var ProductName = (item.FindControl("lblProductName") as Label).Text;
        var ProductNameEn = (item.FindControl("lblProductNameEn") as Label).Text;
        var ImageName = (item.FindControl("hdnImageName") as HiddenField).Value;
        var ProductCode = "";
        var Quantity = "1";// (item.FindControl("inQuantity") as TextBox).Text;//(item.FindControl("hdnQuantitySale") as HiddenField).Value;
        string a = (item.FindControl("hdnPrice") as HiddenField).Value;
        double Price = Convert.ToDouble((item.FindControl("hdnPrice") as HiddenField).Value);
        double SavePrice = 0;// Convert.ToDouble((item.FindControl("hdnSavePrice") as HiddenField).Value);

        if (cmd == "AddToCart")
        {
            var oShoppingCart = new ShoppingCart();
            oShoppingCart.CreateCart(ProductID,
                ImageName,
                ProductName,
                ProductNameEn,
                ProductCode,
                "",
                Price,
                SavePrice,
                "",
                Quantity
                );
        }
    }
    protected void lstProductCategory_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var ParentIDSub = (item.FindControl("hdnParentIDSub") as HiddenField).Value;
        var PanelProduct = item.FindControl("pnlProduct") as Panel;
        if (!string.IsNullOrEmpty(ParentIDSub))
        {
            var oProductCategory = new TLLib.ProductCategory();
            var dv = oProductCategory.ProductCategorySelectAll(Convert.ToInt32(ParentIDSub), 1, "", "").DefaultView;
            if (dv.Count == 0)
            {
                PanelProduct.Visible = true;
            }
        }
    }
}