using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true) //You can also type as - if (!IsPostBack)
            {
                lblTime.Text = "You are accessing this page on " + DateTime.Now.ToString();
            }
            calDepartDt.SelectedDate = DateTime.Today;
            txtDepartDt.Text= DateTime.Today.ToShortDateString();
        }

        protected void calDepartDt_SelectionChanged1(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(ddlFrom.SelectedValue.Equals("Hentian Duta")&&ddlTo.SelectedValue.Equals("Seremban"))
            {
                lblError.Text = "Sorry. We do not provide trip from "+ ddlFrom.SelectedValue.ToString()+ " to "+ ddlTo.SelectedValue.ToString();
            }
            else if (ddlFrom.SelectedValue.Equals("Hentian Putra") && ddlTo.SelectedValue.Equals("Butterworth"))
            {
                lblError.Text = "Sorry. We do not provide trip from " + ddlFrom.SelectedValue.ToString() + " to " + ddlTo.SelectedValue.ToString();
            }
            else if (ddlFrom.SelectedValue.Equals("Hentian Duta") && ddlTo.SelectedValue.Equals("Butterworth"))
            {
                lblError.Text = null;
                double adultPrice = 34;
                double childPrice = 25.5;

                double Totalprice = adultPrice * double.Parse(txtAdult.Text) + childPrice * double.Parse(txtChild.Text);
                txtPrice.Text = "RM " + Totalprice;
            }
            else if (ddlFrom.SelectedValue.Equals("Hentian Putra") && ddlTo.SelectedValue.Equals("Seremban"))
            {
                lblError.Text = null;
                double adultPrice = 6;
                double childPrice = 4.3;

                double Totalprice = adultPrice * double.Parse(txtAdult.Text) + childPrice * double.Parse(txtChild.Text);
                txtPrice.Text = "RM " + Totalprice;
            }
            else
            {
                lblError.Text = null;
            }
        }

    }
}

    
