using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
// <!--
// AUTHOR: Austin Vern Songer
// UNIVERSITY: Robert Morris University
// COURSE: Client Server Development - MIS-517
// DATE:2016MAR04
//  -->
namespace StudentDetailsServiceLayer
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}