using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Security.Cryptography;
using MySql.Data.MySqlClient;

namespace project
{
    public class DBConnection
    {
        private static DBConnection single = null;
        private MySqlConnection connection;
        private string server;
        private string dataBase;
        private string uid;
        private string password;
        private string port;
        private int groupID;

        public MySqlConnection getConnection()
        {
            return connection;
        }

        protected DBConnection()
        {
            server = "localhost";
            dataBase = "stock";
            uid = "root";
            password = "1234";
            port = "3306";

            string connectionString = "SERVER=" + server + ";PORT=" + port + ";DATABASE=" + dataBase + ";UID=" + uid + ";PASSWORD=" + password + ";";

            connection = new MySqlConnection(connectionString);
        }

        public static DBConnection Initialize()
        {
            if (single == null)
            {
                single = new DBConnection();
            }
            return single;
        }

        private string GetMD5(string text)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            md5.ComputeHash(ASCIIEncoding.UTF8.GetBytes(text));
            byte[] result = md5.Hash;
            StringBuilder stringHash = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                stringHash.Append(result[i].ToString("x2"));
            }
            return stringHash.ToString();
        }

        public bool Authorization(string userName, string pass)
        {
            string query = "SELECT * FROM stock.users WHERE Login='" + userName + "' AND Password='" + GetMD5(pass) + "';";
            try
            {
                if (OpenConnection())
                {
                    MySqlCommand command = new MySqlCommand(query, connection);
                    MySqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        groupID = Convert.ToInt32(reader["GroupID"]);
                        reader.Close();
                        connection.Close();
                        return true;
                    }
                    else
                    {
                        MessageBox.Show("Username or password is incorrect!");
                    }
                    reader.Close();
                    connection.Close();
                    return false;
                }
                connection.Close();
                return false;
            }
            catch (Exception ex)
            {
                connection.Close();
                MessageBox.Show(ex.Message);
                return false;
            }
        }

        public int GetGroupId()
        {
            return groupID;
        }

        public bool OpenConnection()
        {
            string connectionString = "SERVER=" + server + ";PORT=" + port + ";DATABASE=" + dataBase + ";UID=" + uid + ";PASSWORD=" + password + ";";

            connection = new MySqlConnection(connectionString);

            try
            {
                connection.Open();
                return true;
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
        }

        public bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message);
                return false;
            }
        }
    }
}