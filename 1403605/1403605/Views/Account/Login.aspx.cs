using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Helpers;
using System.Web.UI;

namespace _1403605.Views.Account
{
    public partial class Login : Page
    {
        private string _sqlSyntax, _userName, _password;
        private SqlCommand _sqlCommand;
        private SqlDataAdapter _sqlDataAdapter;
        private DataTable _dataTable;
        private int _rowCount;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Get connection string to database
        public string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
        }

        protected void btnLoginCustomer_OnClick(object sender, EventArgs e)
        {
            if (IsValid)
            {
                SqlConnection sqlConnection = new SqlConnection(GetConnectionString());

                sqlConnection.Open();

                _sqlSyntax = "Select * from Customer";

                _sqlCommand = new SqlCommand(_sqlSyntax);

                _sqlDataAdapter = new SqlDataAdapter(_sqlCommand.CommandText, sqlConnection);

                _dataTable = new DataTable();

                _sqlDataAdapter.Fill(_dataTable);

                _rowCount = _dataTable.Rows.Count;

                for (int i = 0; i < _rowCount; i++)
                {
                    _userName = _dataTable.Rows[i]["UserName"].ToString();

                    _password = _dataTable.Rows[i]["Password"].ToString();

                    if (_userName == txtUserName.Text && _password == Crypto.SHA256(txtPassword.Text))
                    {
                        Session["UserName"] = _userName;
                        Response.Redirect("~/Views/Product/Marketplace.aspx");
                        ClearControls();
                    }
                    else
                    {
                        lblError.Text = "Invalid User Name or Password! Please try again!";
                        ClearControls();
                    }
                }
            }
        }

        private void ClearControls()
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
        }
    }
}