using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CST_465_Project
{
    public class UserProfileObject
    {
        public Guid UserID { get; set; }
        public String FirstName { get; set; }
        public String LastName { get; set; }
        public int Age { get; set; }
        public String PhoneNumber { get; set; }
        public String Email { get; set; }
        public String Address { get; set; }
        public String City { get; set; }
        public String State { get; set; }
        public String ZipCode { get; set; }
        public byte[] Image { get; set; }
    }
}