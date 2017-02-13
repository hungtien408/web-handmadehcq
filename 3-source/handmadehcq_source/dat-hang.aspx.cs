using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using Telerik.Web.UI;
using TLLib;

public partial class dat_hang : System.Web.UI.Page
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


            Page.Title = "Đặt Hàng";
            var meta = new HtmlMeta() { Name = "description", Content = "Đặt Hàng" };
            Header.Controls.Add(meta);
        }
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        var item = e.Item as ListViewDataItem;
        var cmd = e.CommandName;
        if (cmd == "Payment")
        {
            string strEmail = (item.FindControl("txtEmail") as TextBox).Text.Trim();
            string strFullName = (item.FindControl("txtFullName") as TextBox).Text.Trim();
            string strAddress = (item.FindControl("txtAddress") as TextBox).Text.Trim();
            string strPhone = (item.FindControl("txtPhone") as TextBox).Text.Trim();
            var rbtMoney = item.FindControl("rbtMoney") as RadioButton;
            var rbtEmail = item.FindControl("rbtEmail") as RadioButton;
            //var RadCaptcha = item.FindControl("RadCaptcha1") as RadCaptcha;

            if (IsValid)
            {

                var dtCart = Session["Cart"] as DataTable;
                if (dtCart != null)
                {
                    Session["HoanThanh"] = "true";
                    string CreateBy = "admin";
                    string OrderNumber = DateTime.Now.ToString("ddMMyy") + Guid.NewGuid().GetHashCode().ToString("X").Substring(0, 4);
                    //Session["OrderNumber"] = OrderNumber;
                    string Email = "";
                    string FirstName = "";
                    string Address = "";
                    string PhoneNumber = "";
                    double TotalPrice = 0;
                    double SumTotalPrice = 0;
                    string PaymentMethods = "";
                    string OrderQuantity = "0";
                    string OrderStatusID = "";
                    Session["OrderNumber"] = OrderNumber;

                    Email = strEmail;
                    FirstName = strFullName;
                    Address = strAddress;
                    // City = txtTinh.Text.Trim().ToString();
                    PhoneNumber = strPhone;

                    //TotalPrice = Session["tongtien"].ToString();
                    //OrderQuantity = Session["Quantity"].ToString();
                    OrderStatusID = "1";
                    PaymentMethods = "Thanh Toán Trực Tiếp";

                    string Price = "0";
                    // them don hang
                    var oOrders = new Orders2();
                    oOrders.Orders2Insert(
                        OrderNumber,
                        CreateBy,
                        DateTime.Now.ToString("MM/dd/yyyy"),
                        PaymentMethods,
                        FirstName,
                        Address,
                        PhoneNumber,
                        "",
                        Email,
                        OrderStatusID);

                    // don hang chi tiet
                    var oOrderDetail = new OrderDetail2();
                    foreach (DataRow dr in dtCart.Rows)
                    {
                        string ProductID = dr["ProductID"].ToString();
                        var Quantity = Convert.ToInt32(dr["Quantity"]);
                        if (dr["Price"] != null)
                        {
                            Price = (Convert.ToInt32(dr["Quantity"]) * (Convert.ToDouble(string.IsNullOrEmpty(dr["Price"].ToString()) ? 0 : dr["Price"]))).ToString();
                        }
                        if (Session["UserName"] != null)
                        {
                            CreateBy = Session["UserName"].ToString();
                        }

                        oOrderDetail.OrderDetail2Insert(
                           OrderNumber,
                           ProductID,
                           Quantity.ToString(),
                           Price,
                           CreateBy
                        );
                    }

                    // hinh thuc thanh toan
                    if (rbtMoney.Checked == true)
                    {
                        string FullName = FirstName;
                        Session["FullName"] = FullName;
                        Session["Address"] = Address;
                        PaymentMethods = "Thanh Toán Trực Tiếp";

                        // noi dung mail xac nhan
                        string Body = "<div style='width: 100%; font-size: 14px; font-family: Arial;'>";
                        Body += "<h3 style='color: rgb(204,102,0); font-size: 22px; border-bottom-color: gray; border-bottom-width: 1px;border-bottom-style: dashed; margin-bottom: 20px; font-family: Times New Roman;'>Cảm ơn bạn đã đặt hàng/Thanks for Your Order!</h3>";
                        Body += "<div style='padding: 10px; background-color: rgb(255,244,234); font-family: Verdana;font-size: 11px; margin-bottom: 20px;'>";
                        Body += "<p>Mã số đơn hàng của bạn là <b>" + Session["OrderNumber"] + "</b>. Chi tiết đơn hàng được liệt kê ở phía dưới. </p>";
                        Body += "</div>";
                        Body += "<p><b>Người nhận</b></p>";
                        Body += "<p>Họ và tên: " + strFullName + "</p>";
                        Body += "<p>Email: " + strEmail + "</p>";
                        Body += "<p>Điện thoại: " + strPhone + "</p>";
                        Body += "<p>Địa chỉ: " + strAddress + "</p>";
                        //Body += "<p>Loại địa chỉ: " + dropLoaiDiaChi.SelectedItem.Text + "</p>";
                        //Body += "<p>Tỉnh/Thành phố: " + ddlProvince.SelectedItem.Text + "</p>";
                        //Body += "<p>Quận/Huyện: " + ddlDistrict.SelectedItem.Text + "</p>";
                        //Body += "<p>Ghi chú: " + txtNote.Text + "</p>";
                        Body += "</div>";
                        Body += "<p><b>* Phương thức thanh toán</b>: " + PaymentMethods + "</p>";
                        Body += "<table style='font-size: 11px; font-family: Verdana; padding: 10px; border: 1px solid #C7D7DB; width: 100%;border-collapse: collapse;' cellpadding='0' cellspacing='0'>";
                        //Body += "<tr><th align='left' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Sản phẩm/Cart Items</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Cỡ/Size</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Số lượng/Qty</th><th align='center' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Giá/Item Price</th><th align='right' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Thành tiền/Item Total</th></tr>";
                        Body += "<tr><th align='left' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Sản phẩm/Cart Items</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Số lượng/Qty</th><th align='center' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Giá/Item Price</th><th align='right' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Thành tiền/Item Total</th></tr>";

                        foreach (DataRow dr in dtCart.Rows)
                        {
                            //string ProductCode = dr["Tag"].ToString();
                            string ProductID = dr["ProductID"].ToString();
                            string ProductName = dr["ProductName"].ToString();
                            string Quantity = dr["Quantity"].ToString();
                            Price = dr["Price"].ToString();
                            //string ProductOptionCategoryName = dr["ProductOptionCategoryName"].ToString();
                            //string ProductLengthName = dr["ProductLengthName"].ToString();
                            double tPrice = Convert.ToDouble(Price) * Convert.ToDouble(Quantity);

                            var itemPrice = string.Format("{0:##,###.##}", tPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ";
                            var sPrice = string.Format("{0:##,###.##}", dr["Price"]).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ";
                            //Amount += Convert.ToDouble(Price) * Convert.ToDouble(Quantity);
                            Body += "<tr>";
                            Body += "<td style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + ProductName + "</td>";
                            //Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + ProductLengthName + "</td>";
                            //Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'><div style='background: " + ProductOptionCategoryName + "; width: 30px; height: 30px;'></div></td>";
                            Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + Quantity + "</td>";
                            Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + sPrice + "</td>";
                            Body += "<td align='right' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + itemPrice + "</td>";
                            Body += "</tr>";
                            TotalPrice += tPrice;
                        }

                        //if (!string.IsNullOrEmpty(hdnSavePrice.Value))
                        //{
                        //    SumTotalPrice = TotalPrice - Convert.ToDouble(hdnSavePrice.Value);
                        //}
                        //else
                        //{
                            SumTotalPrice = TotalPrice;
                        //}

                        Body += "</table>";
                        Body += "<div style='clear: both;'></div>";
                        Body += "<table style='font-size: 13px; font-family: Verdana; text-align: right; margin: 10px 0; width: 100%; float: right;' cellpadding='0' cellspacing='0'>";
                        Body += "<tr><td style='width:85%;'>Thành tiền:</td><td style='width:15%;'>" + string.Format("{0:##,###.##}", TotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</td></tr>";
                        //Body += "<tr><td>Giảm:</td><td>" + string.Format("{0:##,###.##}", Convert.ToDouble(hdnSavePrice.Value)).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</td></tr>";
                        Body += "<tr><td><b>Tổng tiền:</b></td><td><b>" + string.Format("{0:##,###.##}", SumTotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</b></td></tr>";
                        Body += "</table>";
                        Body += "<div style='clear: both;'></div>";

                        Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", strEmail, "hungtien408@gmail.com", "Đặt Hàng Gift Shop HANDMADE", Body, true);
                        /////////////////////////////////////////////////////////////////////////////////
                        //txtFullName.Text = "";
                        //txtPhone.Text = "";
                        //txtEmail.Text = "";
                        //txtAddress.Text = "";
                        //txtNote.Text = "";
                        //lblSavePrice.Text = "";
                        //hdnSavePrice.Value = "";
                        var oShoppingCart = new ShoppingCart();
                        oShoppingCart.DeleteAllItem();
                        Session["Cart"] = null;
                        Session["SavePrice"] = null;
                        lstDatHang.DataBind();
                        Response.Redirect("dat-hang-thanh-cong.aspx");

                    }
                    else if (rbtEmail.Checked == true)
                    {
                        string FullName = FirstName;
                        Session["FullName"] = FullName;
                        Session["Address"] = Address;
                        PaymentMethods = "Thanh Toán Chuyển Khoản";
                        oOrders.Orders2Update(
                            OrderNumber,
                            CreateBy,
                            DateTime.Now.ToString("MM/dd/yyyy"),
                            PaymentMethods,
                            FirstName,
                            Address,
                            PhoneNumber,
                            "",
                            Email,
                            OrderStatusID);

                        // noi dung mail xac nhan
                        string Body = "<div style='width: 100%; font-size: 14px; font-family: Arial;'>";
                        Body += "<h3 style='color: rgb(204,102,0); font-size: 22px; border-bottom-color: gray; border-bottom-width: 1px;border-bottom-style: dashed; margin-bottom: 20px; font-family: Times New Roman;'>Cảm ơn bạn đã đặt hàng/Thanks for Your Order!</h3>";
                        Body += "<div style='padding: 10px; background-color: rgb(255,244,234); font-family: Verdana;font-size: 11px; margin-bottom: 20px;'>";
                        Body += "<p>Mã số đơn hàng của bạn là <b>" + Session["OrderNumber"] + "</b>. Chi tiết đơn hàng được liệt kê ở phía dưới. </p>";
                        Body += "</div>";
                        Body += "<p><b>Người nhận</b></p>";
                        Body += "<p>Họ và tên: " + strFullName + "</p>";
                        Body += "<p>Email: " + strEmail + "</p>";
                        Body += "<p>Điện thoại: " + strPhone + "</p>";
                        Body += "<p>Địa chỉ: " + strAddress + "</p>";
                        //Body += "<p>Loại địa chỉ: " + dropLoaiDiaChi.SelectedItem.Text + "</p>";
                        //Body += "<p>Tỉnh/Thành phố: " + ddlProvince.SelectedItem.Text + "</p>";
                        //Body += "<p>Quận/Huyện: " + ddlDistrict.SelectedItem.Text + "</p>";
                        //Body += "<p>Ghi chú: " + txtNote.Text + "</p>";
                        Body += "</div>";
                        Body += "<p><b>* Phương thức thanh toán</b>: " + PaymentMethods + "</p>";
                        Body += "<table style='font-size: 11px; font-family: Verdana; padding: 10px; border: 1px solid #C7D7DB; width: 100%;border-collapse: collapse;' cellpadding='0' cellspacing='0'>";
                        //Body += "<tr><th align='left' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Sản phẩm/Cart Items</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Cỡ/Size</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Số lượng/Qty</th><th align='center' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Giá/Item Price</th><th align='right' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Thành tiền/Item Total</th></tr>";
                        Body += "<tr><th align='left' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Sản phẩm/Cart Items</th><th style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Số lượng/Qty</th><th align='center' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Giá/Item Price</th><th align='right' style='padding: 8px 5px; border-collapse: collapse; background-color: rgb(2,11,111);color: #fff;'>Thành tiền/Item Total</th></tr>";

                        foreach (DataRow dr in dtCart.Rows)
                        {
                            //string ProductCode = dr["Tag"].ToString();
                            string ProductID = dr["ProductID"].ToString();
                            string ProductName = dr["ProductName"].ToString();
                            string Quantity = dr["Quantity"].ToString();
                            Price = dr["Price"].ToString();
                            //string ProductOptionCategoryName = dr["ProductOptionCategoryName"].ToString();
                            //string ProductLengthName = dr["ProductLengthName"].ToString();
                            double tPrice = Convert.ToDouble(Price) * Convert.ToDouble(Quantity);

                            var itemPrice = string.Format("{0:##,###.##}", tPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VND";
                            var sPrice = string.Format("{0:##,###.##}", dr["Price"]).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VND";
                            //Amount += Convert.ToDouble(Price) * Convert.ToDouble(Quantity);
                            Body += "<tr>";
                            Body += "<td style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + ProductName + "</td>";
                            //Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + ProductCode + "</td>";
                            //Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + ProductLengthName + "</td>";
                            //Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'><div style='background: " + ProductOptionCategoryName + "; width: 30px; height: 30px;'></div></td>";
                            Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + Quantity + "</td>";
                            Body += "<td align='center' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + sPrice + "</td>";
                            Body += "<td align='right' style='padding: 5px; border-collapse: collapse; border-bottom: 1px solid #C7D7DB;'>" + itemPrice + "</td>";
                            Body += "</tr>";
                            TotalPrice += tPrice;
                        }

                        //if (!string.IsNullOrEmpty(hdnSavePrice.Value))
                        //{
                        //    SumTotalPrice = TotalPrice - Convert.ToDouble(hdnSavePrice.Value);
                        //}
                        //else
                        //{
                            SumTotalPrice = TotalPrice;
                        //}

                        Body += "</table>";
                        Body += "<div style='clear: both;'></div>";
                        Body += "<table style='font-size: 13px; font-family: Verdana; text-align: right; margin: 10px 0; width: 100%; float: right;' cellpadding='0' cellspacing='0'>";
                        Body += "<tr><td style='width:85%;'>Thành tiền:</td><td style='width:15%;'>" + string.Format("{0:##,###.##}", TotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</td></tr>";
                        //Body += "<tr><td>Giảm:</td><td>" + string.Format("{0:##,###.##}", Convert.ToDouble(hdnSavePrice.Value)).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</td></tr>";
                        Body += "<tr><td><b>Tổng tiền:</b></td><td><b>" + string.Format("{0:##,###.##}", SumTotalPrice).Replace('.', '*').Replace(',', '.').Replace('*', ',') + " VNĐ" + "</b></td></tr>";
                        Body += "</table>";
                        Body += "<div style='clear: both;'></div>";

                        Common.SendMail("smtp.gmail.com", 587, "webmastersendmail0401@gmail.com", "web123master", strEmail, "hungtien408@gmail.com", "Đặt Hàng Gift Shop HANDMADE", Body, true);
                        /////////////////////////////////////////////////////////////////////////////////
                        //txtFullName.Text = "";
                        //txtPhone.Text = "";
                        //txtEmail.Text = "";
                        //txtAddress.Text = "";
                        //lblSavePrice.Text = "";
                        //hdnSavePrice.Value = "";
                        //txtNote.Text = "";
                        var oShoppingCart = new ShoppingCart2();
                        oShoppingCart.DeleteAllItem();
                        Session["Cart"] = null;
                        Session["SavePrice"] = null;
                        lstDatHang.DataBind();
                        Response.Redirect("dat-hang-thanh-cong.aspx");

                    }
                }

            }
            else if (cmd == "Cancel")
            {
                Session["Cart"] = null;
                Response.Redirect("~/");
            }
        }
    }
}