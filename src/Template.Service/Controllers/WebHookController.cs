using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Template.Cadastro.Api.Controllers
{
    public class WebHookController : Controller
    {
        // GET: WebHook
        public ActionResult Index()
        {
            return View();
        }

        // GET: WebHook/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: WebHook/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: WebHook/Create
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

        // GET: WebHook/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: WebHook/Edit/5
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

        // GET: WebHook/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: WebHook/Delete/5
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