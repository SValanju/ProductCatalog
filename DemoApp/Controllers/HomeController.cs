using DemoApp.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DemoApp.Controllers
{
    public class HomeController : Controller
    {

        private readonly string connectionString = ConfigurationManager.ConnectionStrings["connString"].ConnectionString;

        public ActionResult LoginPage()
        {
            return View();
        }

        [HttpPost]
        public ActionResult LoginPage(LoginModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    bool isValidUser = CheckUserCredentials(model);

                    if (!isValidUser)
                        ModelState.AddModelError("Validations", "Invalid username or password!");
                    else
                        return RedirectToAction("Index", "Home");
                }
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Validations", ex.Message);
            }
            return View();
        }

        private bool CheckUserCredentials(LoginModel model)
        {
            bool isValid = false;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // SQL Query to check the user and password
                string query = "SELECT COUNT(1) FROM users WHERE username = @username AND password = @password";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@username", model.UserName);
                    command.Parameters.AddWithValue("@password", model.Password);

                    try
                    {
                        connection.Open();
                        int count = (int)command.ExecuteScalar();
                        isValid = count > 0;
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                }
            }

            return isValid;
        }

        public ActionResult Index()
        {
            List<ProductsModel> products = new List<ProductsModel>();

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM PRODUCTS";

                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    ProductsModel product = new ProductsModel
                    {
                        Id = Convert.ToInt32(reader["ID"]),
                        Name = reader["NAME"].ToString(),
                        Description = reader["DESCRIPTION"].ToString(),
                        Price = Convert.ToDecimal(reader["PRICE"]),
                        Brand = reader["BRAND"].ToString()
                    };
                    products.Add(product);
                }

                reader.Close();
            }
            return View(products);
        }
    }
}