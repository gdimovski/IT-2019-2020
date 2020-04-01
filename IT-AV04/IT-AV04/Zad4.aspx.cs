using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV04
{
    public partial class Zad4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void vnesi_Click(object sender, EventArgs e)
        {
            message.Text = telefon.Text + " беше успешно внесен!";
        }
    }
}