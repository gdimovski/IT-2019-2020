using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV02
{
    public partial class SlikaB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Slika_Click(object sender, ImageClickEventArgs e)
        {
            Koordinati.Text = "(" + e.X.ToString() + "," + e.Y.ToString() + ")";
        }
    }
}