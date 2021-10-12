using Test.Helpers;
using Test.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Test.Services
{
    public class PermissionServices
    {
        public static int AddPermission(Permissions permission)
        {
            int rowsAffected = 0;

            SqlParameter[] parameterArray = new SqlParameter[4];

            parameterArray[0] = new SqlParameter("@FirstName", permission.EmployeeFirstName);
            parameterArray[1] = new SqlParameter("@LastName", permission.EmployeeLastName);
            parameterArray[2] = new SqlParameter("@PermissionType", permission.PermissionType.Id);
            parameterArray[3] = new SqlParameter("@PermissionDate", permission.PermissionDate);
            try
            {
                rowsAffected = DatabaseHelper.ExecuteNonQuery("Permissions_Insert", parameterArray);

            }
            catch (Exception ex)
            {
                CustomLog.LogException(ex);
            }
            return rowsAffected;
        }

        public static List<Permissions> ListsToTable()
        {
            List<Permissions> listPermissions = new List<Permissions>();
            Permissions element = null;
            SqlDataReader currentReader = null;

            try
            {
                currentReader = DatabaseHelper.ExecuteReader("Permissions_ListToTable");
                if (currentReader != null)
                {
                    if (currentReader.HasRows)
                    {
                        while (currentReader.Read())
                        {
                            element = new Permissions();
                            element.PermissionType = new PermissionTypes();
                            element.EmployeeFirstName = (currentReader["EmployeeFirstName"] != DBNull.Value ? (string)currentReader["EmployeeFirstName"] : "");
                            element.EmployeeLastName = (currentReader["EmployeeLastName"] != DBNull.Value ? (string)currentReader["EmployeeLastName"] : "");
                            element.PermissionType.Description = (currentReader["Description"] != DBNull.Value ? (string)currentReader["Description"] : "");
                            element.PermissionDate = (currentReader["PermissionDate"] != DBNull.Value ? (DateTime)currentReader["PermissionDate"] : DateTime.MinValue);
                            listPermissions.Add(element);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                CustomLog.LogException(ex);
            }

            DatabaseHelper.CloseAndDisposeReader(ref currentReader);

            return listPermissions;
        }

        public static List<Permissions> ListsToTableFilter(DateTime dateInitial, DateTime dateEnds)
        {
            List<Permissions> listPermissions = new List<Permissions>();
            Permissions element = null;
            SqlParameter[] parameterArray = new SqlParameter[2];
            SqlDataReader currentReader = null;

            parameterArray[0] = new SqlParameter("@DateInitial", dateInitial);
            parameterArray[1] = new SqlParameter("@DateEnds", dateEnds);

            try
            {
                currentReader = DatabaseHelper.ExecuteReader("Permissions_ListToTableFilter", parameterArray);
                if (currentReader != null)
                {
                    if (currentReader.HasRows)
                    {
                        while (currentReader.Read())
                        {
                            element = new Permissions();
                            element.PermissionType = new PermissionTypes();
                            element.EmployeeFirstName = (currentReader["EmployeeFirstName"] != DBNull.Value ? (string)currentReader["EmployeeFirstName"] : "");
                            element.EmployeeLastName = (currentReader["EmployeeLastName"] != DBNull.Value ? (string)currentReader["EmployeeLastName"] : "");
                            element.PermissionType.Description = (currentReader["Description"] != DBNull.Value ? (string)currentReader["Description"] : "");
                            element.PermissionDate = (currentReader["PermissionDate"] != DBNull.Value ? (DateTime)currentReader["PermissionDate"] : DateTime.MinValue);
                            listPermissions.Add(element);
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                CustomLog.LogException(ex);
            }

            DatabaseHelper.CloseAndDisposeReader(ref currentReader);

            return listPermissions;
        }

    }
}