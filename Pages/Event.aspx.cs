using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Event : WebForm
{
    protected override void OnPreInit(EventArgs e)
    {
        base.OnPreInit(e);
        if (!string.IsNullOrEmpty(Request.QueryString["theme"]))
        {
            CurrentTheme = Request.QueryString["theme"];
            this.Theme = CurrentTheme;
        }
        else
            this.Theme = CurrentTheme;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}