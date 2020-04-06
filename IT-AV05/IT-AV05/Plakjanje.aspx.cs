using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV05
{
    public partial class Plakjanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                // Ovie atributi treba da bidat setirani
                // za da se znae od kade da se zema
                // Text i Value, soodvetno
                koshnichka.DataTextField = "Text";
                koshnichka.DataValueField = "Value";
                koshnichka.DataSource = (ArrayList)Session["koshnichka"];
                koshnichka.DataBind();
                int totalValue = 0;

                foreach(ListItem li in koshnichka.Items)
                {
                    totalValue += Convert.ToInt32(li.Value);
                }

                kupi.Text = "Купи ($ " + totalValue.ToString() + ")";
            }
        }

        protected void kupi_Click(object sender, EventArgs e)
        {
            Session["koshnichka"] = null;
            koshnichka.Items.Clear();
            kupi.Text = "Купи ($ 0)";
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Katalog.aspx");
        }
    }
}