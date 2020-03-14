using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LMIO_lmio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string delete_bt(string bts)
    {
        return "<div onclick=\"JavaScript:return confirm('确定删除-" + bts + "-吗？')\">删除</div>";
    }
}