<%@ Control Language="C#" AutoEventWireup="true" CodeFile="topmenu.ascx.cs" Inherits="UserControls_topmenu" %>
<div class="nav-bar">
    <div class="nav-bar-inner">
        <div id="menutopline"></div>
        <a href="../Pages/Default.aspx">
            <span class="brand">
                <img class="place-left" src="../Content/metroui/images/logo/logo.png" />
            </span>
        </a>
        <span class="pull-menu"></span>
        <div class="divider"></div>

        <ul class="menu">
            <%--<li><a href="../Pages/Default.aspx">หน้าแรก</a></li>--%>
            <li data-role="dropdown">
                <a href="#"><i class="glyphicon glyphicon-home"></i>&nbsp;<asp:Literal ID="about" runat="server" Text="<%$Resources:scil.language,aboutus%>" /></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><asp:Literal ID="background" runat="server" Text="<%$Resources:scil.language,background%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="vision" runat="server" Text="<%$Resources:scil.language,vision%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="board" runat="server" Text="<%$Resources:scil.language,board%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="manager" runat="server" Text="<%$Resources:scil.language,managerdirector%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="report" runat="server" Text="<%$Resources:scil.language,report%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="investor" runat="server" Text="<%$Resources:scil.language,investor%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="organization" runat="server" Text="<%$Resources:scil.language,organization%>" /></a></li>
                </ul>
            </li>
            <li data-role="dropdown"><a href="#"><i class="glyphicon glyphicon-shopping-cart"></i>&nbsp;<asp:Literal ID="product" runat="server" Text="<%$Resources:scil.language,products%>" /></a>
                <ul class="dropdown-menu">
                    <li><a href="../Pages/Products.aspx"><asp:Literal ID="industrialinsured" runat="server" Text="<%$Resources:scil.language,industrialinsured%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="marineinsured" runat="server" Text="<%$Resources:scil.language,marineinsured%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="carinsured" runat="server" Text="<%$Resources:scil.language,carinsured%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="accidentinsured" runat="server" Text="<%$Resources:scil.language,accidentinsured%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="variousinsured" runat="server" Text="<%$Resources:scil.language,variousinsured%>" /></a></li>
                </ul>
            </li>
            <li data-role="dropdown"><a href="#">
                <asp:Literal ID="service" runat="server" Text="<%$Resources:scil.language,service%>" /></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><asp:Literal ID="claim" runat="server" Text="<%$Resources:scil.language,claim%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="hospitallist" runat="server" Text="<%$Resources:scil.language,hospitallist%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="garagelist" runat="server" Text="<%$Resources:scil.language,garagelist%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="insuredpayment" runat="server" Text="<%$Resources:scil.language,insuredpayment%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="download" runat="server" Text="<%$Resources:scil.language,download%>" /></a></li>
                </ul>
            </li>
            <li data-role="dropdown"><a href="#">
                <asp:Literal ID="contact" runat="server" Text="<%$Resources:scil.language,contact%>" /></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><asp:Literal ID="headquarter" runat="server" Text="<%$Resources:scil.language,headquarter%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="branch" runat="server" Text="<%$Resources:scil.language,branch%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="agent" runat="server" Text="<%$Resources:scil.language,agent%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="career" runat="server" Text="<%$Resources:scil.language,career%>" /></a></li>
                    <li><a href="#"><asp:Literal ID="compain" runat="server" Text="<%$Resources:scil.language,compain%>" /></a></li>
                </ul>
            </li>
            <li data-role="dropdown"><a href="#">
                <asp:Literal ID="theme" runat="server" Text="<%$Resources:scil.language,theme%>" /></a>
                <ul class="dropdown-menu">
                    <li><a href="#" onclick="configuration.changeTheme(this);" title="dark">Dark</a></li>
                    <li><a href="#" onclick="configuration.changeTheme(this);" title="bluesky">Blue Sky</a></li>
                </ul>
            </li>
        </ul>
        <div class="span2 place-right" style="margin-right: 2px">
            <div id="language" class="place-right">
                <small><asp:Literal ID="changelang" runat="server" Text="<%$Resources:scil.language,changelang%>" /><a href="#" onclick="configuration.changeLanguage(this);" lang="th-TH">&nbsp;<img src="../Images/lang/th.png" /></a>&nbsp;|&nbsp;<a href="#" onclick="configuration.changeLanguage(this);" lang="en-US"><img src="../Images/lang/gb.png" />&nbsp;</a></small>
            </div>
            <div id="searchtool" class="input-control text span1-5 place-right">
                <asp:TextBox ID="search" placeholder="<%$Resources:scil.language,search%>" runat="server"></asp:TextBox>
                <button class="btn-search"></button>
            </div>
        </div>
        <div id="menubottomline"></div>
    </div>
</div>

