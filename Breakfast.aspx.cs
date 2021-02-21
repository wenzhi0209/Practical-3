using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_3
{
    public partial class Breakfast : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string menu1 = "Nasi Lemak <br /> Chicken Rendang <br /> Teh Tarik <br /> RM 12.50";
            string menu2 = "Mee Goreng <br /> Fried Egg <br /> Teh Tarik RM 8.50";
            string menu3 = "Chicken Sauseges <br /> Omelette <br /> Read BeansCoffee <br /> RM 10.50";
           
            if(rblset.SelectedIndex==0)
            {
                lblSetDetails.Text = menu1;
            }
            else if(rblset.SelectedIndex == 1)
            {
                lblSetDetails.Text = menu2;
            }
            else
            {
                lblSetDetails.Text = menu3;
            }

           


        }

        protected void CalcBTN_Click(object sender, EventArgs e)
        {
            double subtotal;
            double total=0;

            if(cb1.Checked)
            {
                if (qtySet1.Text == "")
                    qtySet1.Text = "1";
                int qty1 = int.Parse(qtySet1.Text.ToString());
                subtotal = qty1 * 12.5;
                LBLpriceSET1.Text = subtotal.ToString();
                total = total + subtotal;
            }
            if (cb2.Checked)
            {
                if (qtySet2.Text == "")
                    qtySet2.Text = "1";
                int qty2 = int.Parse(qtySet2.Text.ToString());
                subtotal = qty2 * 12.5;
                LBLpriceSET2.Text = subtotal.ToString();
                total = total + subtotal;
            }
            if (cb3.Checked)
            {
                if (qtySet3.Text == "")
                    qtySet3.Text = "1";
                int qty3 = int.Parse(qtySet3.Text.ToString());
                subtotal = qty3 * 12.5;
                LBLpriceSET3.Text = subtotal.ToString();
                total = total + subtotal;
            }

            LBLtotal.Text = total.ToString();
        }

        protected void cancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Breakfast.aspx", false);
        }

    }
}