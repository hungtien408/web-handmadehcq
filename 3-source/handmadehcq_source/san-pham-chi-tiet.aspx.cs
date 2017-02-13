using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class san_pham_chi_tiet : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string strTitle, strDescription, strMetaTitle, strMetaDescription;
            if (!string.IsNullOrEmpty(Request.QueryString["pi"]))
            {
                var oProductCategory = new TLLib.ProductCategory();
                var oProduct = new TLLib.Product();

                var dv = oProduct.ProductSelectOne(Request.QueryString["pi"]).DefaultView;
                var dv2 = oProductCategory.ProductCategorySelectOne(Request.QueryString["pci"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                strTitle = Server.HtmlDecode(row["ProductName"].ToString());
                strDescription = Server.HtmlDecode(row["Description"].ToString());
                strMetaTitle = Server.HtmlDecode(row["MetaTittle"].ToString());
                strMetaDescription = Server.HtmlDecode(row["MetaDescription"].ToString());

                hdnSanPhamDetails.Value = progressTitle(dv2[0]["ProductCategoryName"].ToString()) + "-pci-" + dv2[0]["ProductCategoryID"].ToString() + ".aspx";
            }
            else
            {
                strTitle = strMetaTitle = "Sản Phẩm";
                strDescription = "";
                strMetaDescription = "";
            }
            Page.Title = !string.IsNullOrEmpty(strMetaTitle) ? strMetaTitle : strTitle;
            var meta = new HtmlMeta() { Name = "description", Content = !string.IsNullOrEmpty(strMetaDescription) ? strMetaDescription : strDescription };
            Header.Controls.Add(meta);

            lblProductTitle.Text = strTitle;
        }
    }
    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
    protected void lstProductSame_ItemCommand(object sender, ListViewCommandEventArgs e)
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
    protected void lstProductDetails_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;

        var ProductID = (item.FindControl("hdnProductID") as HiddenField).Value;
        var ProductName = (item.FindControl("lblProductName") as Label).Text;
        var ProductNameEn = (item.FindControl("lblProductNameEn") as Label).Text;
        var ImageName = (item.FindControl("hdnImageName") as HiddenField).Value;
        var ProductCode = "";
        var Quantity = (item.FindControl("txtQuantity") as TextBox).Text;//(item.FindControl("hdnQuantitySale") as HiddenField).Value;
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
        else if (cmd == "Buy")
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
            Response.Redirect("gio-hang.aspx");
        }
    }
}