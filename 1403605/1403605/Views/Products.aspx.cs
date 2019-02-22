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
        }

        //Get connection string to database
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        }
        
    }
}