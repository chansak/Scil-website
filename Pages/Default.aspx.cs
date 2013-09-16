using System;
using System.Collections.Generic;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Default : WebForm
{
    protected override void OnPreInit(EventArgs e)
    {
        base.OnPreInit(e);
        this.Theme = CurrentTheme;
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}