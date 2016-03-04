using System.Web;
using System.Web.Mvc;
// <!--
// AUTHOR: Austin Vern Songer
// UNIVERSITY: Robert Morris University
// COURSE: Client Server Development - MIS-517
// DATE:2016MAR04
//  -->
namespace StudentDetailsServiceLayer
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}