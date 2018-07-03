using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Template.Cadastro.Api.Controllers
{
    public class SonarController : Controller
    {
        // GET: Sonar
        public ActionResult Index()
        {
            return View();
        }

        // GET: Sonar/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Sonar/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Sonar/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: Sonar/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Sonar/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: Sonar/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Sonar/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}