using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
// <!--
// AUTHOR: Austin Vern Songer
// UNIVERSITY: Robert Morris University
// COURSE: Client Server Development - MIS-517
// DATE:2016MAR04
//  -->
namespace StudentManagementSystem.Model
{

    public class Student
    {
        [StringLength(25, ErrorMessage = "First name must be 25 characters or less in length.")]
        [Required(ErrorMessage = "First name is required.")]
        public string firstname { get; set; }

        [StringLength(25, ErrorMessage = "Last name must be 25 characters or less in length.")]
        [Required(ErrorMessage = "Lasst name is required.")]
        public string lastname { get; set; }

        public int id { get; set; }

        public string gender { get; set; }

        public string email { get; set; }

        [StringLength(10, ErrorMessage = "Phone Number must be 10 characters in length.")]
        [Required(ErrorMessage = "Phone Number is required.")]
        public string phone { get; set; }

        public string major { get; set; }

        [StringLength(25, ErrorMessage = "Username must be 25 characters or less in length.")]
        [Required(ErrorMessage = "Username is required.")]
        public string username { get; set; }
    }
}