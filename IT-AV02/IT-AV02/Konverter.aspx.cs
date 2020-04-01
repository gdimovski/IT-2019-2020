using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IT_AV02
{
    public partial class Konverter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                Console.WriteLine("NOVO BARANJE");
            } else
            {
                Console.WriteLine("NEKOJ NASTAN");
            }
        }

        protected void Dodaj_Click(object sender, EventArgs e)
        {
            ListItem valuta = new ListItem();
            valuta.Text = ValutaIme.Text;
            valuta.Value = ValutaVrednost.Text;
            ListaValuti.Items.Add(valuta);

            Vkupno.Text = ListaValuti.Items.Count.ToString();
        }

        protected void Izbrishi_Click(object sender, EventArgs e)
        {
            if (ListaValuti.SelectedIndex >= 0)
            {
                ListaValuti.Items.Remove(ListaValuti.SelectedItem);
            }
        }

        protected void ListaValuti_SelectedIndexChanged(object sender, EventArgs e)
        {
            int kol = Int32.Parse(Kolichina.Text);
            int val = Int32.Parse(ListaValuti.SelectedItem.Value);
            int rez = kol * val;

            Konvertirano.Text = rez.ToString();
        }
    }
}