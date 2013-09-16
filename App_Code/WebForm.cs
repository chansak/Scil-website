using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;

/// <summary>
/// Summary description for WebForm
/// </summary>
public class WebForm : System.Web.UI.Page
{
    protected override void InitializeCulture()
    {
        Thread.CurrentThread.CurrentUICulture = new CultureInfo(Configurations.Client["Lang"].ToString());
    }
    public string CurrentTheme {
        get {
            return string.IsNullOrEmpty(Configurations.Client["CurrentTheme"]) ? "bluesky" : Configurations.Client["CurrentTheme"].ToString();
        }
        set {
            Configurations.Client["CurrentTheme"] = value;
            this.Theme = value;
        }
    }
	public WebForm()
	{
        this.Theme = CurrentTheme;
	}
}