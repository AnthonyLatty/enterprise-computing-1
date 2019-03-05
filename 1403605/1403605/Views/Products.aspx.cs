using System;
using System.Web.UI;
using System.Configuration;

namespace _1403605.Views
{
    public partial class Products : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProductSqlDataSource.ConnectionString = GetConnectionString();
                ProductSqlDataSource.SelectCommand = "SELECT * FROM PRODUCT";
            }

            // Handle Application State
            Application["OnlineCustomerCount"] = Convert.ToInt16(Application["OnlineCustomerCount"]) + 1;
            lblOnlineCustomers.Text = Application["OnlineCustomerCount"].ToString();
        }

        //Get connection string to database
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        }
    }
}