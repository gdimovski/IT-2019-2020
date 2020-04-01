using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV04
{
    public partial class Zad2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void choose_Click(object sender, EventArgs e)
        {
            message.Text = "Одбраниот град е: " + cities.SelectedItem.Text;
        }
    }
}