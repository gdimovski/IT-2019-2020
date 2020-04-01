using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV04
{
    public partial class Zad3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                dateVal.ValueToCompare = "2020-04-01";
            }
        }

        protected void vnesi_Click(object sender, EventArgs e)
        {
            message.Text = "Испитот е успешно внесен!";
        }

        protected void subject_TextChanged(object sender, EventArgs e)
        {
            message.Text = "Change: " + DateTime.Now.ToString();
        }

        protected void subject_TextChanged1(object sender, EventArgs e)
        {
            grade.Enabled = true;
        }
    }
}