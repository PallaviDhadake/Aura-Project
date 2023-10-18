using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class thank_you : System.Web.UI.Page
{
    iClass c = new iClass();
    public string currentYear, rootPath;

    protected void Page_Load(object sender, EventArgs e)
    {
        rootPath = c.ReturnHttp();
        currentYear = DateTime.Now.Year.ToString();
    }
}