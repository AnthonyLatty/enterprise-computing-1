using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1403605.Account.Admin
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ProductSqlDataSourceConnection_OnUpdated(object sender, SqlDataSourceStatusEventArgs e)
        {
            lblSuccess.Text = e.AffectedRows > 0 ? "Row Updated Successfully" : "No data updated!";
        }
    }
} 