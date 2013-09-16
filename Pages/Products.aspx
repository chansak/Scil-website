<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/SecoundPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Pages_Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="Server">
    <div class="pages">
        <Gadget:back ID="back" runat="server" />
        <div class="page-region">
            <div class="page-region-content">
                <div class="grid">
                    <div class="row">
                        <div class="span3">
                            <div class="page-sidebar">
                                <ul>
                                    <li class="sticker sticker-color-blue active"><a>ประกันภัยทรัพย์สิน</a></li>
                                    <li class="sticker sticker-color-red"><a><i class="icon-bus"></i>ประกันภัยขนส่งทางทะเล</a></li>
                                    <li data-role="dropdown">
                                        <a><i class="icon-cars"></i>ประกันภัยรถยนต์</a>
                                        <ul class="sub-menu light sidebar-dropdown-menu open">
                                            <li class="sticker"><a>รถยนต์ประเภท 1</a></li>
                                            <li class="sticker"><a>รถยนต์ประเภท 2</a></li>
                                            <li class="sticker"><a>รถยนต์ประเภท 3</a></li>
                                            <li class="sticker"><a>รถยนต์ประเภท 3+</a></li>
                                        </ul>
                                    </li>
                                    <li class="sticker sticker-color-green"><a><i class="icon-accessibility"></i>ประกันภัยสุขภาพ</a></li>
                                    <li class="sticker sticker-color-yellow"><a><i class="icon-accessibility-2"></i>ประกันภัยเบ็ดเตล็ด</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="span8">
                            <h2><i class="icon-left-quote"></i> ประกันภัยรถยนต์ ประเภท 1 <i class="icon-right-quote"></i></h2>
                            <div class="image-collection p4x3">
                                <div>
                                    <img src="../Content/metroui/images/products/product1-1.gif" />
                                </div>
                            </div>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;คุ้มครอง ครอบคลุม....สบายๆ กับประกันภัยรถยนต์ ประเภท 1</p>
                            <br />
                            <p>คุ้มครองความเสียหายได้ครอบคลุมมากที่สุดของการประกันภัยรถยนต์ คุ้มครองความเสียหายต่อตัวรถยนต์ที่เกิดจากการชน การคว่ำ ภัยธรรมชาติ การโจรกรรม และไฟไหม้ คุ้มครองชีวิตร่างกายของผู้ขับขี่รวมถึงผู้โดยสารที่อยู่ในรถยนต์ คุ้มครองครองทรัพย์สินและชีวิตร่างกายของคู่กรณีที่เป็นบุคคลภายนอก เหมาะสมสำหรับรถยนต์จดทะเบียนใหม่และรถยนต์ที่มีอายุการใช้งานไม่เกิน 7 ปี</p>
                            <table class="bordered">
                                <tbody>
                                    <tr>
                                        <th>ความคุ้มครอง</th>
                                        <th>ประเภท 1</th>
                                        <th>ประเภท 2</th>
                                        <th>ประเภท 2 พลัส</th>
                                        <th>ประเภท 2 พลัส + น้ำท่วม</th>
                                        <th>ประเภท 3</th>
                                        <th>ประเภท 3 พลัส</th>
                                        <th>ประเภท 3 พลัส + น้ำท่วม</th>
                                    </tr>
                                    <tr>
                                        <td>1. การคุ้มครองความเสียหายต่อรถยนต์</td>
                                        <td class="td-bg">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>1.1 ความเสียหายจากการชน</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                    </tr>
                                    <tr>
                                        <td>1.2 การสูญหายจากการโจรกรรม</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>1.3 ความเสียหายจากไฟไหม้</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>1.4 ความเสียหายจากภัยธรรมชาติ</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>1.5 ความเสียหายจากน้ำท่วม</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                    </tr>
                                    <tr>
                                        <td>2. การคุ้มครองความรับผิดต่อบุคคลภายนอก</td>
                                        <td class="td-bg">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>2.1 ความเสียหายต่อชีวิตร่างกาย หรืออนามัย</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                    </tr>
                                    <tr>
                                        <td>2.2 ความเสียหายต่อทรัพย์สิน</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                    </tr>
                                    <tr>
                                        <td>3. ความคุ้มครองเพิ่มเติมตามเอกสารแนบท้ายสัญญา</td>
                                        <td class="td-bg">&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>3.1 การประกันอุบัติเหตุส่วนบุคคล</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                    </tr>
                                    <tr>
                                        <td>3.2 การประกันภัยค่ารักษาพยาบาล</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                    </tr>
                                    <tr>
                                        <td>3.3 การประกันตัวผู้ขับขี่</td>
                                        <td class="td-bg">
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                        <td>
                                            <i class="icon-checkmark"></i></td>
                                    </tr>
                                </tbody>
                            </table>
                            <p><i class="icon-star-3"></i>หมายเหตุ เงื่อนไขและความคุ้มครองเป็นไปตามข้อตกลงซึ่งอาจมีการเปลี่ยนแปลงตามประเภทของรถยนต์และลักษณะการใช้รถยนต์</p>
                            <button class="place-left image-button bg-color-darken fg-color-white">ดาวน์โหลดโบชัวร์<img class="bg-color-green" src="../Content/metroui/images/icon/download-32.png" /></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

