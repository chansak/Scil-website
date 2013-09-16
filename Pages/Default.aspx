<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Pages_Default" %>

<%@ MasterType VirtualPath="~/MasterPages/MasterPage.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../Content/jquery.fancybox.css" rel="stylesheet" />
    <script src="../Scripts/jquery.fancybox.pack.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div style="display: none">
        <a class="fancybox" title="" caption="This is 1st title" href="../Images/gallery/notify.jpg">
            <img src="../Images/gallery/notify.jpg" alt="" /></a>
    </div>
    <div class="pages">
        <div class="page-header">
            <div class="top-image">
                <div class="page-header-content">
                    <h2><i class=" icon-left-quote-alt"></i>&nbsp;<asp:Literal ID="companyname" runat="server" Text="<%$Resources:scil.language,companyname%>" />&nbsp;<i class=" icon-right-quote-alt"></i>
                        <p><small>5 May 2013</small></p>
                    </h2>
                </div>
            </div>
        </div>
        <div class="page-region">
            <div class="page-region-content">
                <div class="grid">
                    <div class="row">
                        <div id="tiles">
                            <div class="row">
                                <div class="tile double image image-caption">
                                    <div class="box tile-content">
                                        <img id="image-6" src="../Images/Tiles/callcenter.jpg" />
                                        <span class="caption double full-caption">
                                            <h2>
                                                <asp:Literal ID="callcenter" runat="server" Text="<%$Resources:scil.language,callcenter%>" /></h2>
                                            <p>02-202-9500</p>
                                            <p>siamcityins@siamcityins.com</p>
                                        </span>
                                    </div>
                                </div>
                                <div class="tile double bg-color-white image-caption">
                                    <div class="carousel" data-role="carousel" data-param-effect="slide" data-param-direction="left" data-param-period="5000" data-param-markers="off">
                                        <div class="slides">
                                            <div class="slide image" id="slide10">
                                                <a class="fancybox" title="ประกันภัยรถยนต์" caption="This is 1st title" href="../Images/Tiles/car-insured.png">
                                                    <img src="../Images/Tiles/car-insured.png" />
                                                </a>
                                                <div class="brand">
                                                    <span class="name">ประกันภัยรถยนต์</span>
                                                </div>
                                            </div>
                                            <div class="slide image" id="slide11">
                                                <a class="fancybox" title="ประกันภัยบ้านและทรัพย์สิน" caption="This is 1st title" href="../Images/Tiles/home.png">
                                                    <img src="../Images/Tiles/home.png" />
                                                </a>
                                            </div>
                                            <div class="slide image" id="slide12">
                                                <a class="fancybox" title="ประกันภัยบ้านและทรัพย์สิน แผน2" caption="This is 1st title" href="../Images/Tiles/home2.jpg">
                                                    <img src="../Images/Tiles/home2.jpg" />
                                                </a>
                                                <div class="brand">
                                                    <span class="name">ประกันภัยบ้านและทรัพย์สิน</span>
                                                </div>
                                            </div>
                                        </div>
                                        <span class="control left bg-color-blueLight fg-color-blueDark">&#8249;</span>
                                        <span class="control right bg-color-blueLight fg-color-blueDark">&#8250;</span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="tile image triple image-caption">
                                    <div class="box tile-content">
                                        <img id="image-6" src="../Content/metroui/images/bg/PROMOTION.png" />
                                        <span class="caption triple scale-caption">
                                            <h4>ประกันภัยรถยนต์ประเภท 1 “คุ้มครอง-คุ้มค่า”</h4>
                                            <p>
                                                &nbsp;&nbsp;&nbsp;&nbsp;ความคุ้มครองสูงสุด 1,100,000 บาท ไม่ต้องตรวจสภาพรถ คุ้มครองรถยนต์อายุตั้งแต่ 1-10 ปี ด้วยเบี้ยประกันภัยเริ่มต้นเพียง 8,600 บาท และ สามารถผ่อนชำระ 0 % ผ่านบัตรเครดิตธนาคารกรุงเทพและซิตี้แบงก์
                                            </p>
                                        </span>
                                    </div>
                                </div>
                                <%--<div class="tile image image-caption">
                                    <div class="tile-content">
                                        <img src="../Images/Tiles/Car-and-Calculator.png" />
                                        <span class="caption full-caption double">
                                            <h3>คำนวณเบี้ย</h3>
                                            <h3>ประกันภัย</h3>
                                            <p>update date : 2013</p>
                                        </span>
                                    </div>
                                </div>--%>
                                <div class="tile image image-caption">
                                    <div id="box-6" class="box tile-content">
                                        <img src="../Images/Tiles/Car-and-Calculator2.png" />
                                        <span class="caption scale-caption">
                                            <h3>
                                                <asp:Literal ID="calculate" runat="server" Text="<%$Resources:scil.language,calculate%>" /></h3>
                                            <p>โปรแกรมคำนวณเบี้ยรถยนต์</p>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div id="tile" class="row">
                                <%--<div class="tile double image image-caption">
                                    <div class="box tile-content">
                                        <img src="../Content/metroui/images/tile/OON-RAK-HOUSE.jpg" />
                                        <span class="caption double fade-caption">
                                            <h3>โรงเรียนอุ่นใจ</h3>
                                            <h4>คุ้มครองสวัสดิภาพของลูกหลานท่าน</h4>
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;เพราะอุบัติเหตุเกิดขึ้นอย่างไม่คาดคิด ไม่เลือกคน ไม่เลือกเวลาและสถานที่ นำมาซึ่งความสูญเสียและเสียหายทั้งร่างกายและชีวิติที่อาจเกิดขึ้นกับลูกหลาน ... </p>
                                            <p><a href="#">อ่านต่อ</a></p>
                                        </span>
                                    </div>
                                </div>--%>
                                <div class="tile double bg-color-white image-caption">
                                    <div class="carousel" data-role="carousel" data-param-effect="slide" data-param-direction="left" data-param-period="5000" data-param-markers="off" data-param-auto="false">
                                        <div class="slides">
                                            <div class="slide image">
                                                <a class="fancybox" rel="example_group" title="&nbsp;&nbsp;&nbsp;&nbsp;เมื่อวันที่ 8 สิงหาคม 2556 สายงานธุรกิจ 1 โดยมี คุณบุญยงค์ ว่องศรี ผู้ช่วยกรรมการผู้จัดการ สายงานธุรกิจ 1 คุณมะลิวัลย์ ว่องศิลป์  รองผู้อำนวยการ 
และทีมงาน ได้นำกระเช้าดอกไม้ เข้าร่วมแสดงความยินดี ในวาระฉลองก้าวสู่ปีที่ 9 ของการดำเนินธุรกิจ ของบริษัท ลิสซิ่งกสิกรไทย จำกัด (เค ลิสซิ่ง)
โดยมี คุณอัครนันท์ ฐิตสิริวิทย์ กรรมการผู้จัดการ บจ.ลิสซิ่งกสิกรไทย และคุณสถิตย์ เกิดอรุณสุขศรี  กรรมการผู้จัดการ บจ. โพรเกรส มัลติ อินชัวรันส์ โบรกเกอร์ 
ซึ่งเป็นบริษัทให้บริการสนับสนุนงานต่อเครือธนาคารกสิกรไทย เป็นผู้รับมอบกระเช้าดอกไม้ ตามภาพข่าวกิจกรรม"
                                                    caption="This is 1st title" href="../Images/gallery/KL_SiamCity.JPG">
                                                    <img src="../Images/gallery/KL_SiamCity.JPG" />
                                                </a>
                                            </div>
                                            <div class="slide image">
                                                <a class="fancybox" rel="example_group" title="&nbsp;&nbsp;&nbsp;&nbsp;เมื่อวันที่ 8 สิงหาคม 2556 สายงานธุรกิจ 1 โดยมี คุณบุญยงค์ ว่องศรี ผู้ช่วยกรรมการผู้จัดการ สายงานธุรกิจ 1 คุณมะลิวัลย์ ว่องศิลป์  รองผู้อำนวยการ 
และทีมงาน ได้นำกระเช้าดอกไม้ เข้าร่วมแสดงความยินดี ในวาระฉลองก้าวสู่ปีที่ 9 ของการดำเนินธุรกิจ ของบริษัท ลิสซิ่งกสิกรไทย จำกัด (เค ลิสซิ่ง)
โดยมี คุณอัครนันท์ ฐิตสิริวิทย์ กรรมการผู้จัดการ บจ.ลิสซิ่งกสิกรไทย และคุณสถิตย์ เกิดอรุณสุขศรี  กรรมการผู้จัดการ บจ. โพรเกรส มัลติ อินชัวรันส์ โบรกเกอร์ 
ซึ่งเป็นบริษัทให้บริการสนับสนุนงานต่อเครือธนาคารกสิกรไทย เป็นผู้รับมอบกระเช้าดอกไม้ ตามภาพข่าวกิจกรรม"
                                                    caption="This is 1st title" href="../Images/gallery/Siamcity_HBD.jpg">
                                                    <img src="../Images/gallery/Siamcity_HBD.jpg" />
                                                </a>
                                            </div>
                                        </div>
                                        <span class="control left bg-color-blueLight fg-color-blueDark">&#8249;</span>
                                        <span class="control right bg-color-blueLight fg-color-blueDark">&#8250;</span>
                                    </div>
                                </div>
                                <div id="contact" class="tile icon image-caption">
                                    <div class="tile-content">
                                        <i class="glyphicon glyphicon-comment"></i>
                                    </div>
                                    <div class="brand">
                                        <span class="name">
                                            <asp:Literal ID="complain" runat="server" Text="<%$Resources:scil.language,complain%>" /></span>
                                    </div>
                                </div>
                                <div class="tile image bg-color-white image-caption">
                                    <div class="tile-content">
                                        <a href="https://www.facebook.com/pages/%E0%B8%AA%E0%B8%A2%E0%B8%B2%E0%B8%A1%E0%B8%8B%E0%B8%B4%E0%B8%95%E0%B8%B5%E0%B9%89%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%81%E0%B8%B1%E0%B8%99%E0%B8%A0%E0%B8%B1%E0%B8%A2-Siam-City-Insurance-Public-Company-Limited/146197808765204">
                                            <img src="../Content/metroui/images/tile/FacebookTile.png" />
                                        </a>
                                    </div>
                                    <div class="brand">
                                        <span class="name">Social Network</span>
                                    </div>
                                </div>
                            </div>
                            <div id="news" class="row">
                                <h2><i class="icon-comments-2" style="font-size: 60px"></i>&nbsp;<asp:Literal ID="event" runat="server" Text="<%$Resources:scil.language,news%>" /></h2>
                                <ul class="listview fluid">
                                    <li class="selected">
                                        <div class="badge">new</div>
                                        <div class="icon">
                                            <i class="icon-mail"></i>
                                        </div>
                                        <div class="data">
                                            <h4><i class="icon-left-quote"></i>
                                                คปภ. ร่วมกับ สมาคมประกันวินาศภัย พัฒนากรมธรรม์ประกันภัยรถรูปแบบใหม่ ติดแถบโฮโลแกรมสามมิติ 
                                                <i class="icon-right-quote"></i></h4>
                                            <p>
                                                <%= AppUtilities.Left("&nbsp;&nbsp;&nbsp;&nbsp;สำนักงานคณะกรรมการกำกับและส่งเสริมการประกอบธุรกิจประกันภัย (คปภ.) ร่วมกับสมาคมประกันวินาศภัย เปิดตัวกรมธรรม์ประกันภัยรถรูปแบบใหม่ ติดแถบโฮโลแกรมสามมิติ ภายใต้แนวคิด “เช็ก ใช่ ชัวร์” เช็กง่ายๆ ด้วยสายตา ใช่เมื่อเห็นแถบสามมิติ และชัวร์ได้รับความคุ้มครอง",200,"...") %>
                                            </p>
                                            <span>
                                                <a href="Event.aspx" class="big button">
                                                    <asp:Literal ID="Literal1" runat="server" Text="<%$Resources:scil.language,readmore%>" />&nbsp;<i class="icon-arrow-right-3"></i></a>
                                            </span>
                                        </div>
                                    </li>
                                    <li class="selected">
                                        <div class="icon">
                                            <i class="icon-mail"></i>
                                        </div>

                                        <div class="data">
                                            <h4><i class="icon-left-quote"></i>คปภ.จับมือ ภาคธุรกิจประกันภัย สร้างกรอบมาตรฐานการจ่ายค่าสินไหมทดแทนกรณีเสียชีวิตหรือทุพพลภาพถาวร <i class="icon-right-quote"></i></h4>
                                            <p>
                                                <%= AppUtilities.Left("&nbsp;&nbsp;&nbsp;&nbsp;สำนักงานคณะกรรมการกำกับและส่งเสริมการประกอบธุรกิจประกันภัย (คปภ.) ร่วมกับภาคธุรกิจประกันภัย กำหนดกรอ บมาตรฐานการพิจารณาจ่ายค่าสินไหมทดแทนสำหรับการประกันภัยรถยนต์ภาคสมัครใจ เพื่อให้บริษัทประกันภัยชดใช้ค่าสินไหมทดแทนให้กับประชาชนที่เสียชีวิตหรือทุพพลภาพถาวร ด้วยความเป็นธรรม สอดคล้องกับสภาวการณ์ทางเศรษฐกิจและสังคมในปัจจุบัน และเป็นมาตรฐานเดียวกันทั่วประเทศ",200,"...") %>
                                            </p>
                                            <span>
                                                <a class="big button">
                                                    <asp:Literal ID="Literal2" runat="server" Text="<%$Resources:scil.language,readmore%>" />&nbsp;<i class="icon-arrow-right-3"></i></a>
                                            </span>
                                        </div>
                                    </li>
                                </ul>
                                <span class="place-left label success">
                                    <asp:Literal ID="readall" runat="server" Text="<%$Resources:scil.language,readall%>" /></span>
                            </div>
                        </div>
                        <div id="asidemenu" class="span3-half">
                            <div id="call-center">
                                <h2>
                                    <asp:Literal ID="callcenter2" runat="server" Text="<%$Resources:scil.language,callcenter%>" /></h2>
                                <p>02-202-9500</p>
                            </div>
                            <div class="aside-header">
                                <h3>
                                    <asp:Literal ID="internal" runat="server" Text="<%$Resources:scil.language,internalsystem%>" /></h3>
                            </div>
                            <ul class="accordion" data-role="accordion">
                                <li id="agent" class="active">
                                    <a href="#">I-Agent</a>
                                    <div>
                                        <h4><i class="icon-user-3"></i>
                                            <asp:Literal ID="agentlogin" runat="server" Text="<%$Resources:scil.language,agentlogin%>" /></h4>
                                        <div class="input-control text">
                                            <label>
                                                <asp:Literal ID="username" runat="server" Text="<%$Resources:scil.language,username%>" /></label>
                                            <input type="text" />
                                        </div>
                                        <div class="input-control text">
                                            <label>
                                                <asp:Literal ID="password" runat="server" Text="<%$Resources:scil.language,password%>" /></label>
                                            <input type="password" />
                                        </div>
                                        <div class="input-control">
                                            <button class="big">
                                                <asp:Literal ID="login" runat="server" Text="<%$Resources:scil.language,login%>" />
                                                <i class="icon-arrow-right-3"></i>
                                            </button>
                                        </div>
                                    </div>
                                </li>
                                <li id="fanclub">
                                    <a href="#">I-Fanclub</a>
                                    <div>
                                        <h4><i class="icon-thumbs-up"></i>เครือข่ายสังคมออนไลน์</h4>
                                        <p>&nbsp;&nbsp;การรับสมัครสมาชิกของ สยามซิตี้ เพื่อรับสิทธิประโยชน์ ข่าวสารจากบริษัท</p>
                                    </div>
                                </li>
                                <li id="claim">
                                    <a href="#">I-Claim</a>
                                    <div>
                                        <h4><i class="icon-list"></i>เรียกร้องสิทธิ์</h4>
                                    </div>
                                </li>
                                <li id="payment">
                                    <a href="#">I-Payment</a>
                                    <div>
                                        <h4><i class="icon-cart"></i>ช่องทางการชำระเงิน</h4>
                                        <%--<ol>
                                            <li>เงินสด / เช็ค / ดร๊าฟ</li>
                                            <li>บัตรเครดิต / Mail Order</li>
                                            <li>Bill Payment</li>
                                            <li>ธนาณัติ</li>
                                            <li>ผ่อนชำระเบี้ยประกันภัยรถยนต์กับอิออน </li>
                                        </ol>--%>
                                    </div>
                                </li>
                                <li id="insure">
                                    <a href="#">I-Insurance</a>
                                    <div>
                                        <h4><i class="icon-grid-view"></i>ประกันภัย</h4>
                                    </div>
                                </li>
                                <li id="pre">
                                    <a href="#">I-Premium</a>
                                    <div>
                                        <h4><i class="icon-star"></i>สิทธิพิเศษ</h4>
                                    </div>
                                </li>
                                <%--<li>&nbsp;</li>--%>
                            </ul>
                            <h3>
                                <asp:Literal ID="map" runat="server" Text="<%$Resources:scil.language,map%>" /></h3>
                            <small>
                                <asp:Literal ID="company" runat="server" Text="<%$Resources:scil.language,companyname%>" /></small>
                            <img src="../Images/Tiles/navigate.png" />

                        </div>
                        <%--close aside--%>
                    </div>
                    <%--close main content--%>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".fancybox").fancybox({
                beforeLoad: function () {
                    if (utilities.getCookie('showNotify') == null) {
                        var now = new Date();
                        var time = now.getTime();
                        time += 3600 * 1000;
                        now.setTime(time);
                        utilities.setCookie('showNotify', 'true', now.toGMTString());
                    }
                },
                helpers: {
                    title: {
                        type: 'inside',
                        position: 'bottom'
                    }
                },
                openEffect: 'elastic',
                nextEffect: 'elastic',
                prevEffect: 'elastic'
            });
            if (utilities.getCookie('showNotify') == null)
                $(".fancybox").eq(0).trigger('click');
        });
    </script>
</asp:Content>

