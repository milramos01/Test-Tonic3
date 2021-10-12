using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Test.Models
{
    public class Permissions
    {
        public int Id { get; set; }
        public string EmployeeFirstName { get; set; }
        public string EmployeeLastName { get; set; }
        public PermissionTypes PermissionType { get; set; }
        public DateTime PermissionDate { get; set; }

        public Permissions(){}
        public Permissions(int id, string employeeFirstName, string employeeLastName, PermissionTypes permissionTypes , DateTime permissionDate) 
        {
            Id = id;
            EmployeeFirstName = employeeFirstName;
            EmployeeLastName = employeeLastName;
            PermissionType.Id = permissionTypes.Id;
            PermissionType.Description = permissionTypes.Description;
            PermissionDate = permissionDate;
        }
    }
}