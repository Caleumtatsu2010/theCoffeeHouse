using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using theCoffeeHouse.Models;
using theCoffeeHouse.Models.DAO;
using PagedList;

namespace theCoffeeHouse.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
        public ActionResult Index(string type, string search, int page = 1)
        { //lay ra loai san pham
            var d = new SanPhamDAO();
            var n = new NewsDAO();

            int pageSize = 4;
            if (type == "sanpham")
            {
                return RedirectToAction("ByPrice", new { search = search, from = 0, to = 0 });
            }
            else//type == tin
            {

                var list = n.ListByName(search, page, pageSize);
                ViewBag.NewName = search;
                return View(list);
            }

        }
        // GET: Search
        public ActionResult ByPrice(string search, string from , string to)
        { //lay ra loai san pham
            var d = new SanPhamDAO();
            
            var fromlocal = Int32.Parse(from);
            var tolocal = Int32.Parse(to);
            if (fromlocal == 0 & tolocal == 0)
            {
                var list = d.ListAllPaging(search);
                ViewBag.Name = search;
                return View(list);
            }
            else
            {
                var list = d.ListByPrice(fromlocal, tolocal);
                ViewBag.From = fromlocal;
                ViewBag.To = tolocal;
                return View(list);
            }
        }
    }
}