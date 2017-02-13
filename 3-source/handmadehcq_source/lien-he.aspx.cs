using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class lien_he : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Page.Title = "Hệ Thống Cửa Hàng";
            var meta = new HtmlMeta() { Name = "description", Content = "Hệ Thống Cửa Hàng" };
            Header.Controls.Add(meta);
        }

    }
}