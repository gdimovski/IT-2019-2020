using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV05
{
    public partial class Proizvodi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                koshnichka.DataSource = (ArrayList)Session["koshnichka"];
                koshnichka.DataBind();

                naslov.Text = Request.QueryString.Get("name");

                // База на податоци
                string[] sl = {
                    "Modern Operating Systems by Andrew S. Tanenbaum",
                    "Advanced Programming in the UNIX Environment by W. Richard Stevens",
                    "The Mythical Man-month by Frederick Phillips Brooks",
                    "Introduction to the Theory of Computation by Michael Sipser",
                    "Thinking in Systems: A Primer by Donella H. Meadows"
                };

                string[] sl_c = {
                    "45", "60", "20", "55", "30"
                };

                string[] be = {
                    "Origin by Dan Brown",
                    "The Hobbit by J. R. R. Tolkien",
                    "Harry Potter and the Philosopher's Stone by J. K. Rowling",
                    "Sherlock Holmes Series by Arthur Conan Doyle",
                    "Hercule Poirot Mysteries Series by Agatha Christie"
                };

                string[] be_c = {
                    "10", "9", "9", "50", "40"
                };

                string[] mg = {
                    "WIRED",
                    "PC Magazine",
                    "MIT Technology Review",
                    "Linux Magazine",
                    "Fast Company"
                };

                string[] mg_c = {
                    "2", "3", "1", "3", "2"
                };

                // Пребарувањето
                switch(Convert.ToInt32(Request.QueryString.Get("catId")))
                {
                    case 0:
                        naslovi.DataSource = sl;
                        ceni.DataSource = sl_c;
                        break;
                    case 1:
                        naslovi.DataSource = be;
                        ceni.DataSource = be_c;
                        break;
                    case 2:
                        naslovi.DataSource = mg;
                        ceni.DataSource = mg_c;
                        break;
                }

                naslovi.DataBind();
                ceni.DataBind();
            }
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Katalog.aspx");
        }

        protected void naslovi_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ViewState["totalChanges"] == null)
            {
                ViewState["totalChanges"] = 1;
            } else
            {
                ViewState["totalChanges"] = 
                    Convert.ToInt32(ViewState["totalChanges"]) + 1;
            }

            total.Text = ((int)ViewState["totalChanges"]).ToString();
            ceni.SelectedIndex = naslovi.SelectedIndex;
        }

        protected void dodadi_Click(object sender, EventArgs e)
        {
            ArrayList lista;
            if (Session["koshnichka"] == null)
            {
                lista = new ArrayList();
            } else
            {
                lista = (ArrayList)Session["koshnichka"];
            }

            lista.Add(new ListItem(naslovi.SelectedItem.Text, ceni.SelectedItem.Text));

            // Ovie atributi treba da bidat setirani
            // za da se znae od kade da se zema
            // Text i Value, soodvetno
            koshnichka.DataTextField = "Text";
            koshnichka.DataValueField = "Value";
            koshnichka.DataSource = lista;
            koshnichka.DataBind();

            Session["koshnichka"] = lista;
        }

        protected void kupi_Click(object sender, EventArgs e)
        {
            Response.Redirect("Plakjanje.aspx");
        }
    }
}