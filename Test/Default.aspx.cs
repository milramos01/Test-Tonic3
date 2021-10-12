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

namespace Test
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            permissionType.Items.Clear();
            List<PermissionTypes> listPermissionTypes = new List<PermissionTypes>();
            listPermissionTypes = PermissionTypeServices.Lists().ToList();

            foreach (PermissionTypes perType in listPermissionTypes)
            {
                ListItem listItemPermissionType = new ListItem(perType.Description, (perType.Id).ToString());
                permissionType.Items.Add(listItemPermissionType);
            }
        }
        
        protected void Selection_Change(Object sender, EventArgs e)
        {
            DateTime date = permissionDate.SelectedDate;
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            int rowsAffects = 0;
            Permissions permission = new Permissions();
            permission.PermissionType = new PermissionTypes();

            permission.EmployeeFirstName = firstName.Text;
            permission.EmployeeLastName = lastName.Text;
            permission.PermissionType.Id= Convert.ToInt32(permissionType.SelectedValue);
            permission.PermissionDate = permissionDate.SelectedDate;

            rowsAffects= PermissionServices.AddPermission(permission);
            if(rowsAffects == 1)
            {
                string strMsg = "Permission submitted.";
                string script = "<script language=\"javascript\" type=\"text/javascript\">alert('" + strMsg + "');</script>";
                Response.Write(script);
                firstName.Text = "";
                lastName.Text = "";
                permissionDate.SelectedDate = DateTime.Now;
            }
           
        }

    }
}
