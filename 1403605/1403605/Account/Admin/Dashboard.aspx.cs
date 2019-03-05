using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;


namespace _1403605.Account.Admin
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Get connection string to database
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        }

        protected void ProductSqlDataSourceConnection_OnUpdated(object sender, SqlDataSourceStatusEventArgs e)
        {
            lblSuccess.Text = e.AffectedRows > 0 ? "Row Updated Successfully" : "No data updated!";
        }

        protected void btnSaveSaleProduct_Click(object sender, EventArgs e)
        {

        }
    }
} 