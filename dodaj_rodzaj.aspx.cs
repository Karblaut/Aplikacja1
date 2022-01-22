using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aplikacja1
{
    public partial class dodaj_rodzaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource1.Insert();
                Response.Redirect("dodaj_rodzaj.aspx");
            }
            catch(System.Data.SqlClient.SqlException)
            {
                {
                    Label1.Visible = true;
                    Label1.Text = "Rodzaj projektu " + TextBox1.Text + " został już dodany";
                    Response.Write("");
                    TextBox1.Text = "";
                }
        }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}