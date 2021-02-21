using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical_3
{
    public partial class HolidayPackage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack==true){
                Msglbl.Text = "Happy Holiday from MOM Travel";

            }
        }

        protected void CheckBtn_Click(object sender, EventArgs e)
        {
            int price;
            if(DDLform.SelectedValue.Equals("KL"))
            {
                if (DDLto.SelectedValue.Equals("Japan"))
                {
                    price = 2400;
                }
                else
                    price = 2200;
            }
            else
            {
                if (DDLto.SelectedValue.Equals("Japan"))
                {
                    price = 3400;
                }
                else
                    price = 3200;
            }

            string pocketMoneyMsg;
            string statusMsg;
            int budget = int.Parse(budgetBox.Text.ToString());

            if (budget < price)
            {
                statusMsg = "Sorry no more holiday\n";
                int temp = price - budget;
                pocketMoneyMsg = "You need more RM " + temp;
            }   
            else
            {
                statusMsg = "Yay! can go for holiday\n";
                int temp = budget - price;
                pocketMoneyMsg = "RM " + temp +" extra pocket money";
            } 





            string strDisp = "Your destination : " +
                DDLform.SelectedValue.ToString() + "-" + DDLto.SelectedValue.ToString() + "</br>"+
                statusMsg+pocketMoneyMsg;

            Display_Info.Text = strDisp;

        }
    }
}