using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Helpers;
using System.Web.UI;
using _1403605.Models;

namespace _1403605.Views.Membership.Free
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
                             (UserId, UserName, MembershipType, Password)   
                              VALUES  
                             (@UserId, @UserName, @MembershipType, @Password)";

                using (SqlCommand sqlCmd = new SqlCommand(sqlSyntax, sqlConnection))
                {
                    sqlCmd.Parameters.AddWithValue("@UserId", customer.CustomerId);
                    sqlCmd.Parameters.AddWithValue("@UserName", customer.UserName);
                    sqlCmd.Parameters.AddWithValue("@MembershipType", customer.MembershipType);
                    sqlCmd.Parameters.AddWithValue("@Password", customer.Password);

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


        protected void btnSaveFreeCustomer_OnClick(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Random random = new Random();

                Customer customer = new Customer
                {
                    CustomerId = random.Next(0, 100),
                    UserName = txtUserName.Text,
                    MembershipType = ddlMembershipType.SelectedItem.Text,
                    Password = Crypto.SHA256(txtPassword.Text)
                };

                ExecuteInsert(customer);
                lblResult.Text = "Registration complete, you can now sign in to your account.";
                ClearControls();
            }
        }


        private void ClearControls()
        {
            txtPassword.Text = "";
            txtUserName.Text = "";
        }
    }
}