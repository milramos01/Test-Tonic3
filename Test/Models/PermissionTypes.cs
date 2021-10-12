using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Test.Models
{
    public class PermissionTypes
    {
        public int Id { get; set; }
        public string Description { get; set; }

        public PermissionTypes() { }
        public PermissionTypes(int id, string description)
        {
            Id = id;
            Description = description;
        }
    }
}