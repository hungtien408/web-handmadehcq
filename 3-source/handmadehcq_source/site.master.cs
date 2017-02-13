using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Web.Security;
using TLLib;

public partial class site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Page.Header.DataBind();
            string page = Request.Url.PathAndQuery.ToLower();

            string startScript = "<script type='text/javascript'>";
            string endScript = "')</script>";
            string activePage = "";

            if (page.Contains("san-pham.aspx?ci=") || page.Contains("chi-tiet-san-pham.aspx?pi="))
                activePage = "san-pham.aspx";
            else if (page.Contains("chi-tiet-tin-tuc.aspx?id="))
                activePage = "tin-tuc.aspx";
            else if (!page.EndsWith("default.aspx"))
                activePage = Path.GetFileName(page);

            if (!string.IsNullOrEmpty(activePage))
                runScript.InnerHtml = startScript + "changeActiveMenu('" + activePage + endScript;

            runScript.InnerHtml += startScript + "changeSubActiveMenu('" + Path.GetFileName(page) + endScript;
        }
    }

    protected string progressTitle(object input)
    {
        return TLLib.Common.ConvertTitle(input.ToString());
    }
    protected void Page_PreRender(object sender, EventArgs e)
    {
        if (Session["Cart"] != null)
        {
            var oShoppingCart = new ShoppingCart();
            var dt = oShoppingCart.Cart();
            if (dt.Rows.Count == 0)
            {
                lblSummary.Text = "0";
                lblSummary2.Text = "0";
            }
            else
            {
                int quantity = 0;
                double Total = 0;

                foreach (DataRow dr in dt.Rows)
                {
                    var Quantity = Convert.ToInt32(string.IsNullOrEmpty(dr["Quantity"].ToString()) ? "0" : dr["Quantity"]);
                    var Price = Convert.ToDouble(string.IsNullOrEmpty(dr["Price"].ToString()) ? 0 : dr["Price"]);
                    Total += Quantity * Price;
                    quantity += Quantity;
                }
                lblSummary.Text = quantity.ToString();
                lblTotalPrice.Text = string.Format("{0:##,###.##}", Total).Replace('.', '*').Replace(',', '.').Replace('*', ',');
                lstCart.DataSource = dt;
                lstCart.DataBind();

                lblSummary2.Text = quantity.ToString();
                lblTotalPrice2.Text = string.Format("{0:##,###.##}", Total).Replace('.', '*').Replace(',', '.').Replace('*', ',');
                lstCart2.DataSource = dt;
                lstCart2.DataBind();
            }
        }
    }
    protected void btnLoginButton_Click(object sender, EventArgs e)
    {
        string UserName = txtUserName.Text;
        MembershipUser mu = Membership.GetUser(UserName);
        bool bValid = Membership.ValidateUser(UserName, txtPassword.Text);
        //Session["PWD"] = Login1.Password;
        if (UserName != null)
        {
            if (bValid)
            {
                Session["IsLogin"] = "True";

                if (Request.QueryString["ReturnURL"] != null)
                {
                    Response.Redirect(Request.QueryString["ReturnURL"]);
                }
                else
                {
                    string[] roleUser = Roles.GetRolesForUser(UserName.ToString());
                    for (int i = 0; i < roleUser.Length; i++)
                    {
                        if (roleUser[i] == "admin")
                        {
                            Response.Redirect("ad/bilingual/");
                        }
                        else
                        {
                            Session["UserName"] = UserName;
                            Session["IsLogin"] = true;
                            var oAddressBook = new AddressBook();
                            var a = oAddressBook.AddressBookSelectAll("", "", "", "", "", "", "", UserName, "", "", "", "", "", "", "", "", "", "", "", "member").DefaultView;
                            Session["FullNameUser"] = a[0]["FirstName"].ToString();
                            Response.Redirect("~/");
                        }
                    }
                }
            }
            else
            {
                lblErrorLogin.Text = "Đăng nhập không thành công, vui lòng thử lại.";
                ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {$('.dn').trigger('click');});", true);
            }
        }
    }
    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        Session["IsLogin"] = null;
        Session["UserName"] = null;
        FormsAuthentication.SignOut();
        Response.Redirect(Page.Request.Url.AbsolutePath);
    }

    protected void lnkLogoutMobi_Click(object sender, EventArgs e)
    {
        Session["IsLogin"] = null;
        Session["UserName"] = null;
        FormsAuthentication.SignOut();
        Response.Redirect(Page.Request.Url.AbsolutePath);
    }

    protected void btnNewLetter_Click(object sender, EventArgs e)
    {
        if (txtEmailNewLetter.Text != "")
        {
            new TLLib.Newsletter().NewsletterInsert(txtEmailNewLetter.Text.ToString().Trim());
        }
        ScriptManager.RegisterClientScriptBlock(Page, Page.GetType(), "runtime", " $(document).ready(function () {alert('Cảm ơn bạn đã đăng ký nhận tin Suri Cosmetics');});", true);
        txtEmailNewLetter.Text = "";
    }
    protected void DropDownList_DataBound(object sender, EventArgs e)
    {
        var cbo = (DropDownList)sender;
        cbo.Items.Insert(0, new ListItem("Tất cả danh mục", "3"));
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("tim-kiem.aspx?cat=" + dropListProduct.SelectedValue + "&kw=" + txtSearch.Text.Trim());
    }
    protected void btnSearch2_Click(object sender, EventArgs e)
    {
        Response.Redirect("tim-kiem.aspx?cat=" + dropListProduct.SelectedValue + "&kw=" + txtSearch2.Text.Trim());
    }
}
