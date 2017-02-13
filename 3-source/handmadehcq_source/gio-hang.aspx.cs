using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class gio_hang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["UserName"] == null || Session["IsLogin"] == null)
            {
                //Response.Redirect("~/login.aspx?returnurl=" + Request.Url.PathAndQuery);
                Response.Redirect("~/dangnhap.aspx");
            }

            Page.Title = "Giỏ Hàng";
            var meta = new HtmlMeta() { Name = "description", Content = "Giỏ Hàng" };
            Header.Controls.Add(meta);
        }
    }
    protected void ListView1_DataBound(object sender, EventArgs e)
    {
        var dtCart = Session["Cart"] as DataTable;
        if (dtCart != null)
        {
            //var lblTotalPrice = ListView1.FindControl("lblTotalPrice") as Label;
            //var hdnTotalPrice = ListView1.FindControl("hdnTotalPrice") as HiddenField;

            //var lblSumTotalPrice = ListView1.FindControl("lblSumTotalPrice") as Label;
            //var hdnSumTotalPrice = ListView1.FindControl("hdnSumTotalPrice") as HiddenField;
            //var lblShippingPrice = ListView1.FindControl("lblShippingPrice") as Label;


            //var hdnShippingPrice = ListView1.FindControl("hdnShippingPrice") as HiddenField;
            //var odsProvince = ListView1.FindControl("odsProvince") as ObjectDataSource;
            //var dv = (DataView)odsProvince.Select();
            var iShippingPrice = "0";// Convert.ToDouble(string.IsNullOrEmpty(dv[0]["ShippingPrice"].ToString()) ? "0" : dv[0]["ShippingPrice"].ToString());
            double TotalPrice = 0;
            double SumTotalPrice = 0;
            double ShippingPrice = 0;

            if (lblTotalPrice != null)
            {
                foreach (DataRow dr in dtCart.Rows)
                {
                    var Quantity = Convert.ToInt32(string.IsNullOrEmpty(dr["Quantity"].ToString()) ? 0 : dr["Quantity"]);
                    var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["Price"].ToString()) ? 0 : dr["Price"]);
                    TotalPrice += Quantity * Price;
                }

                ShippingPrice = Convert.ToDouble(iShippingPrice);
                //ShippingPrice = 20000;
                SumTotalPrice = TotalPrice + ShippingPrice;
                hdnTotalPrice.Value = TotalPrice.ToString();
                //hdnSumTotalPrice.Value = SumTotalPrice.ToString();
                lblTotalPrice.Text = string.IsNullOrEmpty(TotalPrice.ToString()) ? "<strong>0</strong>" : "<strong>" + (string.Format("{0:##,###.##}", TotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong>";
                //lblSumTotalPrice.Text = string.IsNullOrEmpty(SumTotalPrice.ToString()) ? "<strong>0</strong> vnđ" : "<strong>" + (string.Format("{0:##,###.##}", SumTotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong> vnđ";
                //lblShippingPrice.Text = iShippingPrice.ToString() == "0" ? "<strong>0</strong> vnđ" : "<strong>" + (string.Format("{0:##,###.##}", iShippingPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',')) + "</strong> vnđ";
                //hdnShippingPrice.Value = ShippingPrice.ToString();
            }
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        if (cmd == "Remove")
        {
            var ProductID = (item.FindControl("hdnCartProductID") as HiddenField).Value;

            var oShoppingCart = new ShoppingCart();
            oShoppingCart.DeleteItem(ProductID);
            ListView1.DataBind();
        }
    }
    protected void txtQuantity_TextChanged(object sender, EventArgs e)
    {
        var textbox = (TextBox)sender;
        var parent = textbox.NamingContainer;
        var oShoppingCart = new ShoppingCart();
        var Quantity = (parent.FindControl("txtQuantity") as TextBox).Text.Trim();
        var ProductID = (parent.FindControl("hdnCartProductID") as HiddenField).Value;
        int Quantity1 = Int32.Parse(Quantity);
        if (Quantity1 > 0 && Quantity1 < 1000)
        {
            oShoppingCart.UpdateQuantity(ProductID, Quantity);
            ListView1.DataBind();
        }
        else
        {
            Quantity = "1";
            ScriptManager.RegisterClientScriptBlock((TextBox)sender, sender.GetType(), "runtime", "alert('Bạn nhập quá số lượng cho phép (1 - 12)')", true);
        }

        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {$('.cart img').trigger('click');});", true);
    }
}