using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV02
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Pozadina.Items.Add("White");
                Pozadina.Items.Add("Red");
                Pozadina.Items.Add("Green");
                Pozadina.Items.Add("Blue");
                Pozadina.Items.Add("Yellow");

                Font.Items.Add("Arial");
                Font.Items.Add("Verdana");
                Font.Items.Add("Courier");
                Font.Items.Add("Times New Roman");

                Boja.Items.Add("White");
                Boja.Items.Add("Red");
                Boja.Items.Add("Green");
                Boja.Items.Add("Blue");
                Boja.Items.Add("Yellow");

                ListItem li = new ListItem();
                li.Text = BorderStyle.None.ToString();
                li.Value = ((int)BorderStyle.None).ToString();
                Ramka.Items.Add(li);
                li = new ListItem();
                li.Text = BorderStyle.Solid.ToString();
                li.Value = ((int)BorderStyle.Solid).ToString();
                Ramka.Items.Add(li);
                li = new ListItem();
                li.Text = BorderStyle.Dotted.ToString();
                li.Value = ((int)BorderStyle.Dotted).ToString();
                Ramka.Items.Add(li);
                li = new ListItem();
                li.Text = BorderStyle.Dashed.ToString();
                li.Value = ((int)BorderStyle.Dashed).ToString();
                Ramka.Items.Add(li);
                li = new ListItem();

                Pozadina.Focus();

                Naslov.Visible = false;
                Slika.Visible = false;

            }
        }

        protected void Kreiraj_Click(object sender, EventArgs e)
        {
            Panela.BackColor = System.Drawing.Color.FromName(Pozadina.SelectedValue);
            Panela.BorderStyle = (BorderStyle)Int32.Parse(Ramka.SelectedValue);
            Naslov.Font.Size = FontUnit.Point(Int32.Parse(Golemina.Text));
            Naslov.Font.Name = Font.SelectedValue;
            Naslov.ForeColor = System.Drawing.Color.FromName(Boja.SelectedValue);
            Naslov.Text = Tekst.Text;
            Naslov.Visible = true;

            if (ShowSlika.Checked)
            {
                Slika.Visible = true;
            } else
            {
                Slika.Visible = false;
            }
        }
    }
}