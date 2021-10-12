using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Test.Models;
using Test.Services;
using Newtonsoft.Json;
using System.IO;
using System.Text;
using System.Data;

namespace Test
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Permissions> listPermission = new List<Permissions>();
            listPermission = PermissionServices.ListsToTable().ToList();
            
            gridvwpermissions.DataSource = listPermission;
            gridvwpermissions.DataBind();
        }

        protected void ButtonFilter_Click(object sender, EventArgs e)
        {
            DateTime dateInitial = DateInitial.SelectedDate;
            DateTime dateEnds = DateEnd.SelectedDate;

            List<Permissions> listPermissionFilter = new List<Permissions>();
            listPermissionFilter = PermissionServices.ListsToTableFilter(dateInitial,dateEnds).ToList();

            gridvwpermissions.DataSource = listPermissionFilter;
            gridvwpermissions.DataBind();
        }
    }
}