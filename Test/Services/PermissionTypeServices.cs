using Test.Helpers;
using Test.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Test.Services
{
    public class PermissionTypeServices
    {
        public static List<PermissionTypes> Lists()
        {
            List<PermissionTypes> listPermissionTypes = new List<PermissionTypes>();
            PermissionTypes element= null;
            SqlParameter[] parameterArray = new SqlParameter[1];
            SqlDataReader currentReader = null;

            parameterArray[0] = new SqlParameter("@id", 0);

            try
            {
                currentReader = DatabaseHelper.ExecuteReader("PermisionTypes_Lists", parameterArray);
                if (currentReader != null)
                {
                    if (currentReader.HasRows)
                    {
                        while (currentReader.Read())
                        {
                            element = new PermissionTypes();
                            element.Id = Convert.ToInt32((currentReader["Id"] != DBNull.Value ? (int)currentReader["Id"] : 0));
                            element.Description = (currentReader["Description"] != DBNull.Value ? (string)currentReader["Description"] : "");
                            listPermissionTypes.Add(element);
                        }
                    }

                }
            }
            catch (Exception ex)
            {
                CustomLog.LogException(ex);
            }

            DatabaseHelper.CloseAndDisposeReader(ref currentReader);

            return listPermissionTypes;
        }

       
    }
}