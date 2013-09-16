<%@ Control Language="C#" AutoEventWireup="true" CodeFile="footer.ascx.cs" Inherits="UserControls_footer" %>
<div class="footer-wrap">
    <%--<div class="footer-content-wrap">
        <a href="#" class="footer-sitemap-menu-wrap"></a>
        <a href="#" class="footer-condition-menu-wrap"></a>
        <a href="#" class="footer-download-menu-wrap"></a>
        <div class="footer-menu-line"></div>
        <div class="midle-footer-menu-wrap">
            <a href="http://www.oic.or.th" class="midle-footer-menu" target="_blank">คปภ.</a>
        </div>
        <div class="footer-menu-line"></div>
        <div class="social-img">
            <div class="place-right">
                <h2 class="place-left" title="Facebook"><i class="icon-facebook"></i></h2>
                <h2 class="place-left" title="Twitter"><i class="icon-twitter"></i></h2>
                <h2 class="place-left" title="Google+"><i class="icon-google-plus"></i></h2>
                <h2 class="place-left" title="Linkin"><i class="icon-linkedin"></i></h2>
            </div>
        </div>
    </div>--%>
    <div class="footer-copyright-wrap">
        <div class="copyright-content"><asp:Literal ID="copyright" runat="server" Text="<%$Resources:scil.language,copyright%>" /></div>
        <div class="browser-content"><asp:Literal ID="bestview" runat="server" Text="<%$Resources:scil.language,bestview%>" /></div>
    </div>
    <div class="footer-border-bottom"></div>
</div>
