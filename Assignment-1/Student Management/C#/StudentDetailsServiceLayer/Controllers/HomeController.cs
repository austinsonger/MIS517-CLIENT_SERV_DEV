using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
// <!--
// AUTHOR: Austin Vern Songer
// UNIVERSITY: Robert Morris University
// COURSE: Client Server Development - MIS-517
// DATE:2016MAR04
//  -->
namespace StudentDetailsServiceLayer.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
    }
}
