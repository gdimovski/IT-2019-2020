﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV05
{
    public partial class Katalog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sl_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?catId=0&name=Стручна+Литература");
        }

        protected void be_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?catId=1&name=Белетристика");
        }

        protected void mg_Click(object sender, EventArgs e)
        {
            Response.Redirect("Proizvodi.aspx?catId=2&name=Магазини");
        }
    }
}