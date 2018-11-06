using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using _1403605.Models;
using System.Web.Helpers;

namespace _1403605.Views.Account
{
    public partial class Register : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Get connection string to database
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        }

        private void ExecuteInsert(Customer customer)
        {
            using (SqlConnection sqlConnection = new SqlConnection(GetConnectionString()))
            {
                string sqlSyntax = @"INSERT INTO Customer   
                             (UserId, UserName, Password)   
                              VALUES  
                             (@UserId, @UserName, @Password)";

                using (SqlCommand sqlCmd = new SqlCommand(sqlSyntax, sqlConnection))
                {
                    sqlCmd.Parameters.AddWithValue("@UserId", customer.CustomerId);
                    sqlCmd.Parameters.AddWithValue("@UserName", customer.UserName);
                    sqlCmd.Parameters.AddWithValue("@Password", customer.Password);

                    sqlConnection.Open();
                    sqlCmd.CommandType = CommandType.Text;
                    sqlCmd.ExecuteNonQuery();
                    sqlConnection.Close();
                }
            }
        }

        protected void btnSaveCustomer_OnClick(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Random random = new Random();

                Customer customer = new Customer
                {
                    CustomerId = random.Next(0,100),
                    UserName = txtUserName.Text,
                    Password = Crypto.SHA256(txtPassword.Text)
                };

                ExecuteInsert(customer);
                lblResult.Text = "Registration complete, you can now sign in to your account.";
                ClearControls();
                Response.Redirect("~/Home.aspx");
            }
        }

        private void ClearControls()
        {
            txtPassword.Text = "";
            txtUserName.Text = "";
        }

    }
}