<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="lien-he.aspx.cs" Inherits="lien_he" %>

<%@ Register Src="~/assets/uc/aside-contact.ascx" TagPrefix="uc1" TagName="asidecontact" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Handmade</title>
    <meta name="description" content="Handmade" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="Server">
    <div class="container">
        <div class="ColContent">
            <div class="title">
                <h1>HỆ THỐNG CỬA HÀNG</h1>
            </div>
            <div class="contact-bg">
                <div class="contact-box">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.877126011248!2d106.61120941506734!3d10.743952262729525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752dcdd50aff03%3A0xe26af69ba6f33335!2zQ1RZIENQIENOVFQgVFLhuqZOIEzDig!5e0!3m2!1svi!2s!4v1482719379967" width="100%" height="260" frameborder="0" style="border: 0" allowfullscreen></iframe>
                </div>
                <div class="contact-box">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.858911838307!2d106.62209031506733!3d10.745355262704095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752dd413dc9daf%3A0x2f7294225f7e0a8!2zMTA0MSBI4bqtdSBHaWFuZywgcGjGsOG7nW5nIDExLCBRdeG6rW4gNiwgSOG7kyBDaMOtIE1pbmgsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1482719472188" width="100%" height="260" frameborder="0" style="border: 0" allowfullscreen></iframe>
                </div>
                <div class="contact-box">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.807839905973!2d106.62553221506725!3d10.74928826263274!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752dd54a114083%3A0xb8e49c0b40783c14!2zNzQ4IEtpbmggRMawxqFuZyBWxrDGoW5nLCBwaMaw4budbmcgMTMsIFF14bqtbiA2LCBI4buTIENow60gTWluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1482719506909" width="100%" height="260" frameborder="0" style="border: 0" allowfullscreen></iframe>
                </div>
            </div>
        </div>
        <div class="ColAside">
            <uc1:asidecontact runat="server" ID="asidecontact" />
        </div>
    </div>
</asp:Content>

