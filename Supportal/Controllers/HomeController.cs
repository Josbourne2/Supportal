using Supportal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Threading;

namespace Supportal.Controllers
{
    public class HomeController : Controller
    {               
        public ActionResult Index()
        {    
            SQL_MonitoringDBContext _db = new SQL_MonitoringDBContext();
            var model = _db.Mon_Instance;
            
            return View(model);
        }

        [RBAC]
        public ActionResult About()
        {
            if (this.HasRole("Administrator"))
            {
                //Perform additional tasks and/or extract additional data from 
                //database into view model/viewbag due to administrative privileges...                
            }
           
            return View();
        }

        [RBAC]
        public ActionResult Contact()
        {        
            return View();
        }    
    }
}