using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using _1403605.Models;
using System.Data.SqlClient;
using System.Data;

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


        private void InsertSaleProduct(SaleProducts saleProducts)
        {
            using (SqlConnection sqlConnection = new SqlConnection(GetConnectionString()))
            {
                string sqlSyntax = @"INSERT INTO SaleDiscountProduct   
                             (sales_id, product_name, product_description, ImageUrl, UnitPrice)   
                              VALUES  
                             (@sales_id, @product_name, @product_description, @ImageUrl, @UnitPrice)";

                using (SqlCommand sqlCmd = new SqlCommand(sqlSyntax, sqlConnection))
                {
                    sqlCmd.Parameters.AddWithValue("@sales_id", saleProducts.SaleId);
                    sqlCmd.Parameters.AddWithValue("@product_name", saleProducts.ProductName);
                    sqlCmd.Parameters.AddWithValue("@product_description", saleProducts.Description);
                    sqlCmd.Parameters.AddWithValue("@ImageUrl", saleProducts.ImageUrl);
                    sqlCmd.Parameters.AddWithValue("@UnitPrice", saleProducts.UnitPrice);

                    try
                    {
                        sqlConnection.Open();
                        sqlCmd.CommandType = CommandType.Text;
                        sqlCmd.ExecuteNonQuery();
                    }
                    catch (Exception e)
                    {
                        lblError.Text = e.Message;
                    }
                    finally
                    {
                        sqlConnection.Close();
                    }
                }
            }
        }


        protected void btnSaveSaleProduct_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                var random = new Random();

                var salesProduct = new SaleProducts
                {
                    SaleId = random.Next(0, 1000000),
                    ProductName = txtProductName.Text,
                    Description = txtDescription.Text,
                    ImageUrl = "sale_poster.jpg",
                    UnitPrice = txtUnitPrice.Text
                };

                InsertSaleProduct(salesProduct);
                lblResult.Text = "Sales product added";
                ClearControls();
            }
        }

        private void ClearControls()
        {
            txtProductName.Text = "";
            txtDescription.Text = "";
            txtUnitPrice.Text = "";
        }

        protected void ProductSqlDataSourceConnection_OnUpdated(object sender, SqlDataSourceStatusEventArgs e)
        {
            lblSuccess.Text = e.AffectedRows > 0 ? "Row Updated Successfully" : "No data updated!";
        }
    }
} 