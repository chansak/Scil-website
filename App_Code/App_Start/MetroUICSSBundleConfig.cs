using System.Web.Optimization;

[assembly: WebActivatorEx.PostApplicationStartMethod(typeof(ASP.App_Start.MetroUICSSBundleConfig), "RegisterBundles")]

namespace ASP.App_Start
{
	public class MetroUICSSBundleConfig
	{
		public static void RegisterBundles()
		{
            BundleTable.Bundles.Add(new ScriptBundle("~/bundles/metroui").Include(
                "~/Scripts/jquery-{version}.js",
                "~/Scripts/metroui/accordion.js", 
                "~/Scripts/metroui/buttonset.js", 
                "~/Scripts/metroui/calendar.js", 
                "~/Scripts/metroui/carousel.js", 
                "~/Scripts/metroui/dialog.js", 
                "~/Scripts/metroui/dropdown.js", 
                "~/Scripts/metroui/input-control.js", 
                "~/Scripts/metroui/pagecontrol.js", 
                "~/Scripts/metroui/rating.js", 
                "~/Scripts/metroui/slider.js",
                "~/Scripts/metroui/tile-drag.js", "~/Scripts/metroui/tile-slider.js"));
            BundleTable.Bundles.Add(new StyleBundle("~/Content/theme/metro").Include(
                "~/Content/metroui/css/modern.css",
                "~/Content/metroui/css/modern-responsive.css"));
            BundleTable.Bundles.Add(new StyleBundle("~/Content/theme/dark").Include(
                "~/Content/dark/css/modern.css",
                "~/Content/dark/css/modern-responsive.css"));
		}
	}
}
