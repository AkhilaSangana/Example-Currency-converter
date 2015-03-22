using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace example_currency
{
    public partial class CurrencyconversionUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void ddFromCurrency_SelectedIndexChanged(object sender, EventArgs e)
        {
            string inputcur_value = tbFromCurrency.Text;
            string input_country = ddFromCurrency.Text;
            string outputcur_value = tbToCurrency.Text;
            string output_country = ddToCurrency.Text;
            Response.Write(inputcur_value + " " + input_country + " Equals " + outputcur_value + " " + output_country);

        }

        protected void ddToCurrency_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void tbFromCurrency_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}