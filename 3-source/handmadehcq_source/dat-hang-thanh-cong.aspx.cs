using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class dat_hang_thanh_cong : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["OrderNumber"] == null)
            {
                //Response.Redirect("~/login.aspx?returnurl=" + Request.Url.PathAndQuery);
                Response.Redirect("~/dangnhap.aspx");
            }

            Page.Title = "Handmade";
            var meta = new HtmlMeta() { Name = "description", Content = "Handmade" };
            Header.Controls.Add(meta);
        }
    }
}