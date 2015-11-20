using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CST_465_Project.Code
{
    public static class UserProfileRepo
    {
        public static UserProfileObject GetUserProfile(Guid user_id)
        {
            UserProfileObject user = new UserProfileObject();

            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CST465"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("UserProfile_Get", connection);

                command.Connection.Open();
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@UserId", user_id));

                try
                {
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read()) // retrive the first row from the command
                    {
                        user.UserID = (Guid)reader[0];
                        user.FirstName = (String)reader[1];
                        user.LastName = (String)reader[2];
                        user.Age = (int)reader[3];
                        user.PhoneNumber = (String)reader[4];
                        user.Email = (String)reader[5];
                        user.Address = (String)reader[6];
                        user.City = (String)reader[7];
                        user.State = (String)reader[8];
                        user.ZipCode = (String)reader[9];
                        user.Image = (reader[10] == System.DBNull.Value) ? null : (byte[])reader[10];
                    }
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    command.Connection.Close();
                }
            }

            return user;
        }

        public static void SaveUserProfile(UserProfileObject user)
        {
            using (SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_CST465"].ConnectionString))
            {
                SqlCommand command = new SqlCommand("UserProfile_InsertUpdate", connection);

                command.Connection.Open();
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Add(new SqlParameter("@UserId", user.UserID));
                command.Parameters.Add(new SqlParameter("@FirstName", user.FirstName));
                command.Parameters.Add(new SqlParameter("@LastName", user.LastName));
                command.Parameters.Add(new SqlParameter("@Age", user.Age));
                command.Parameters.Add(new SqlParameter("@PhoneNumber", user.PhoneNumber));
                command.Parameters.Add(new SqlParameter("@EmailAddress", user.Email));
                command.Parameters.Add(new SqlParameter("@StreetAddress", user.Address));
                command.Parameters.Add(new SqlParameter("@City", user.City));
                command.Parameters.Add(new SqlParameter("@State", user.State));
                command.Parameters.Add(new SqlParameter("@ZipCode", user.ZipCode));
                command.Parameters.Add(new SqlParameter("@ProfileImage", user.Image));

                try
                {
                    command.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    command.Connection.Close();
                }
            }
        }
    }
}