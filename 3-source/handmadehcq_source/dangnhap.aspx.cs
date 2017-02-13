using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TLLib;

public partial class dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

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
}