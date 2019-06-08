using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace RegisterationForminMVC.Models
{
    public class clsUserReg
    {
        string connectionString = @"Data Source=DELL;Initial Catalog=REGISMVC; Integrated Security=true;";
        public string EmpID { get; set; }
        public string EmpName { get; set; }

        public string bday { get; set; }

        public string EmpAdress { get; set; }

        public string City { get; set; }

        public string EmpMob { get; set; }

        public string DeptName { get; set; }


        public List<clsUserReg> GetUsers()
        {

            List<clsUserReg> lstUsers = new List<clsUserReg>();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spGetAllUsers", con);
                cmd.CommandType = CommandType.StoredProcedure;

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    clsUserReg obj1 = new clsUserReg();
                    obj1.EmpName= Convert.ToString(rdr["EmpName"]);
                    obj1.City = Convert.ToString(rdr["City"]);
                    obj1.EmpAdress= Convert.ToString(rdr["EmpAddress"]);
                    obj1.EmpMob = Convert.ToString(rdr["EmpMob"]);
                    obj1.EmpID = Convert.ToString(rdr["EmpID"]);
                    obj1.DeptName = Convert.ToString(rdr["DeptName"]);
                    obj1.EmpID = Convert.ToString(rdr["EmpID"]);


                    lstUsers.Add(obj1);


                }               
                        
                con.Close();
            }
            return lstUsers;
        }








        public void AddUser(string EmpName, DateTime bday, int DeptID, string EmpAdress, string City, Double EmpMob)
        {

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("spAddUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@EmpName", EmpName);
                cmd.Parameters.AddWithValue("@bday", bday);
                cmd.Parameters.AddWithValue("@DeptID", DeptID);
                cmd.Parameters.AddWithValue("@EmpAdress", EmpAdress);
                cmd.Parameters.AddWithValue("@City", City);
                cmd.Parameters.AddWithValue("@EmpMob", EmpMob);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }





        

    }
}