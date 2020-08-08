using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//User Control Implemented in Member.aspx
//Temperature Conversion User Control That Generates a Celsius to Farenheight and Farenheight to Celsius Conversion Tool
namespace Project5_Benjamin_Downes
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
           
        protected void Button1_Click(object sender, EventArgs e) 
        {
            double farenheight = Convert.ToDouble(fdegree1.Text);
            double celsius = ((farenheight - 32)*5)/9; //f to c formula
            cdegree1.Text = celsius.ToString();

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            double celsius = Convert.ToDouble(cdegree2.Text);
            double farengheight = (celsius * 1.8) + 32; //c to f formula
            fdegree2.Text = farengheight.ToString();
        }
    }
}