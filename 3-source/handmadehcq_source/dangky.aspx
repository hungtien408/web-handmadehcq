<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="dangky.aspx.cs" Inherits="dangky" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Handmade</title>
    <meta name="description" content="Handmade" />
    <script type="text/javascript">
        $(function () {
            var start = new Date();
            start.setFullYear(start.getFullYear() - 70);
            var end = new Date();
            end.setFullYear(end.getFullYear() - 18);

            $("[id$='txtBirthDay']").datepicker({
                changeMonth: true,
                changeYear: true,
                minDate: start,
                maxDate: end,
                yearRange: start.getFullYear() + ':' + end.getFullYear(),
                dateFormat: "mm/dd/yy",
                onSelect: function () {
                    var a = $("[id$='txtBirthDay']").datepicker({ dateFormat: 'mm/dd/yyy' }).val();
                    $("[id$='hdnBirthDay']").val(a);
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="banner" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="register-bg">
        <div class="container">
            <div class="register-text">
                <h1>ĐIỀU KHOẢN SỬ DỤNG</h1>
                <div class="register-content">
                    <h1>Mục đích</h1>
                    <p>Quy định này được lập ra với mục đích nêu rõ các điều khoản, quyền lợi, nghĩa vụ và trách nhiệm của người sử dụng khi sử dụng dịch vụ liên quan đến Internet được cung cấp tại trang <a href="http://www.handmadeshop.vn" target="_blank">www.handmadeshop.vn</a></p>
                    <br />
                    <h1>Đăng ký thành viên</h1>
                    <p>①  Cách thức đăng ký thành viên như sau: sau khi điền đầy đủ thông tin cá nhân vào mẫu quy định của Handmade Shop, bạn đánh dấu đồng ý vào các điều khoản, khi đó bạn sẽ trở thành thành viên của Handmade Shop. </p>
                    <br />
                    <p>② Đăng ký thành viên không áp dụng cho những đối tượng sau:</p>
                    <br />
                    <p style="padding-left: 15px;">
                        1. Mất tư cách làm thành viên theo khoản 3 điều 7 của quy định (bạn chỉ có thể gia         nhập lại làm thành viên sau 3 tháng).
                    </p>
                    <p style="padding-left: 15px;">2. Nội dung đăng ký giả mạo, điền thiếu thông tin hay đánh sai chữ.</p>
                    <p style="padding-left: 15px;">
                        3. Trường hợp bị cho rằng có thể gây ảnh hưởng về mặt kỹ thuật của Handmade Shop            khi đăng ký hội viên.
                    </p>
                    <br />
                    <p>
                        ③ Thời hạn chấp thuận đơn đăng ký thành viên được tính từ thời điểm Handmade Shop      đồng ý.
                    </p>
                    <br />
                    <p>
                        ④ Trường hợp thành viên có sự thay đổi nội dung đăng ký theo điều 15 khoản 1 thì phải      thông báo ngay cho Lemon về nội dung thay đổi đó bằng Email hoặc cách thức liên      lạc khác.
                    </p>
                </div>
            </div>

            <div class="register-form">
                <h1>ĐĂNG KÝ TÀI KHOẢN</h1>
                <p><span>***</span>Vui lòng điền đầy đủ thông tin bên dưới</p>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <div class="form-group input-group">
                            <div class="icon-input"><span class="icon-mail"></span></div>
                            <asp:TextBox ID="txtEmailRegister" CssClass="input-lognin" runat="server" AutoPostBack="True" OnTextChanged="txtEmail_TextChanged"></asp:TextBox>
                            <asp:TextBoxWatermarkExtender ID="txtEmailRegister_WatermarkExtender" runat="server" Enabled="True"
                                WatermarkText="Nhập email của bạn" TargetControlID="txtEmailRegister">
                            </asp:TextBoxWatermarkExtender>
                            <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator2"
                                runat="server" ValidationGroup="Register" ControlToValidate="txtEmailRegister"
                                ErrorMessage="Sai định dạng email!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator5" runat="server"
                                Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtEmailRegister"
                                ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:CustomValidator ID="CustomValidator2" ValidationGroup="Register" runat="server"
                                ControlToValidate="txtEmailRegister" Display="Dynamic"></asp:CustomValidator>
                            <asp:CustomValidator ID="CustomValidator1" ValidationGroup="Register" runat="server"
                                ControlToValidate="txtEmailRegister" Display="Dynamic"></asp:CustomValidator>
                            <asp:Label ID="lblEmailMessage" runat="server" ForeColor="Green"></asp:Label>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <div class="form-group input-group">
                    <div class="icon-input"><span class="icon-pass"></span></div>
                    <asp:TextBox ID="txtPasswordRegister" CssClass="input-lognin" TextMode="Password"
                        runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtPasswordRegister_WatermarkExtender" runat="server" Enabled="True"
                        WatermarkText="Nhập mật khẩu" TargetControlID="txtPasswordRegister">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator6" runat="server"
                        Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtPasswordRegister"
                        ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator3"
                        runat="server" ValidationGroup="Register" ControlToValidate="txtPasswordRegister"
                        ErrorMessage="Vui lòng nhập ít nhất 6 ký tự" ValidationExpression="^.*(?=.{6,}).*$"
                        Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                <div class="form-group input-group">
                    <div class="icon-input"><span class="icon-pass"></span></div>
                    <asp:TextBox ID="txtConfirmPassWordRegister" TextMode="Password" CssClass="input-lognin"
                        runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" Font-Bold="true" ValidationGroup="Register"
                        runat="server" ErrorMessage="Xác nhận mật khẩu sai" ControlToCompare="txtPasswordRegister"
                        ControlToValidate="txtConfirmPassWordRegister" Display="Dynamic" CssClass="lb-error"></asp:CompareValidator>
                </div>
                <div class="form-group input-group">
                    <div class="icon-input"><span class="icon-mail"></span></div>
                    <asp:TextBox ID="txtFullNameRegister" CssClass="input-lognin" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" Enabled="True"
                        WatermarkText="Nhập họ và tên" TargetControlID="txtFullNameRegister">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                        Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtFullNameRegister"
                        ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group input-group">
                    <div class="icon-input"><span class="icon-date"></span></div>
                    <asp:TextBox ID="txtBirthDay" CssClass="input-lognin" runat="server" placeholder="Ngày/tháng/năm sinh"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="txtBirthDay_WatermarkExtender" runat="server" Enabled="True"
                        WatermarkText="Ngày/tháng/năm sinh" TargetControlID="txtPasswordRegister">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                        Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtBirthDay"
                        ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <%--<asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                        runat="server" ValidationGroup="Register" ControlToValidate="txtBirthDay"
                        ErrorMessage="Vui lòng nhập đúng ngày/tháng/năm sinh" ValidationExpression="^\d{2}/\d{2}/\d{4}$"
                        Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>--%>
                    <asp:HiddenField ID="hdnBirthDay" runat="server" />
                </div>
                <div class="form-group gioitinh">
                    <label>Giới tính:</label>
                    <asp:RadioButtonList ID="rdbGender" runat="server" RepeatDirection="Horizontal" CssClass="sex">
                        <asp:ListItem Value="0" Selected="True">Nữ</asp:ListItem>
                        <asp:ListItem Value="1">Nam</asp:ListItem>
                        <asp:ListItem Value="2">Không khai báo</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
                <div class="form-group input-group">
                    <div class="icon-input"><span class="icon-mail"></span></div>
                    <asp:TextBox ID="txtAddress" CssClass="input-lognin" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender2" runat="server" Enabled="True"
                        WatermarkText="Nhập địa chỉ" TargetControlID="txtAddress">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                        Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtAddress"
                        ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group input-group">
                    <div class="icon-input"><span class="icon-mail"></span></div>
                    <asp:TextBox ID="txtPhone" CssClass="input-lognin" runat="server"></asp:TextBox>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender3" runat="server" Enabled="True"
                        WatermarkText="Nhập điện thoại" TargetControlID="txtPhone">
                    </asp:TextBoxWatermarkExtender>
                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                        Display="Dynamic" ValidationGroup="Register" ControlToValidate="txtPhone"
                        ErrorMessage="Thông tin bắt buộc!" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group input-group input-captcha">
                    <asp:RadCaptcha ID="RadCaptcha1" ForeColor="Red" Font-Bold="true" ValidationGroup="Register"
                        runat="server" ErrorMessage="+ Mã an toàn: không chính xác." ValidatedTextBoxID="txtVerifyCode"
                        Display="Dynamic" CssClass="captcha">
                        <CaptchaImage Width="155" RenderImageOnly="True" />
                    </asp:RadCaptcha>
                    <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server" Width="80px"></asp:TextBox>
                </div>
                <div class="longin-btn">
                    <asp:Button ID="btnRegister" OnClick="btnRegister_Click" runat="server" CssClass="button-btn" ValidationGroup="Register" Text="ĐĂNG KÝ" />
                </div>
                <%--<div class="logn-bot">
                    <span>HOẶC ĐĂNG NHẬP BẰNG</span>
                    <a href="#">
                        <img src="assets/images/icon3.png" alt="" /></a>
                    <a href="#">
                        <img src="assets/images/icon4.png" alt="" /></a>
                </div>--%>
            </div>

        </div>
    </div>
</asp:Content>

