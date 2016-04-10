using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Supportal.Controllers
{
    public class ZRPController : Controller
    {
        // GET: ZRP
        public ActionResult Index()
        {
            //Get ZRP Database servers
            SQL_MonitoringDBContext _db = new SQL_MonitoringDBContext();

            var model = from servers in _db.Mon_Instance
                        where servers.Server.Contains("ZRP")
                        select servers.Server;


            return View();
        }

        //// GET: ZRP/Details/5
        //public ActionResult Details(int id)
        //{
        //    return View();
        //}

        //// GET: ZRP/Create
        //public ActionResult Create()
        //{
        //    return View();
        //}

        //// POST: ZRP/Create
        //[HttpPost]
        //public ActionResult Create(FormCollection collection)
        //{
        //    try
        //    {
        //        // TODO: Add insert logic here

        //        return RedirectToAction("Index");
        //    }
        //    catch
        //    {
        //        return View();
        //    }
        //}

        //// GET: ZRP/Edit/5
        //public ActionResult Edit(int id)
        //{
        //    return View();
        //}

        //// POST: ZRP/Edit/5
        //[HttpPost]
        //public ActionResult Edit(int id, FormCollection collection)
        //{
        //    try
        //    {
        //        // TODO: Add update logic here

        //        return RedirectToAction("Index");
        //    }
        //    catch
        //    {
        //        return View();
        //    }
        //}

        //// GET: ZRP/Delete/5
        //public ActionResult Delete(int id)
        //{
        //    return View();
        //}

        //// POST: ZRP/Delete/5
        //[HttpPost]
        //public ActionResult Delete(int id, FormCollection collection)
        //{
        //    try
        //    {
        //        // TODO: Add delete logic here

        //        return RedirectToAction("Index");
        //    }
        //    catch
        //    {
        //        return View();
        //    }
        }
    }
}
