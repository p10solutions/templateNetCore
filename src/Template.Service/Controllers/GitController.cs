﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Template.Cadastro.Api.Controllers
{
    [Produces("application/json")]
    [Route("api/Git")]
    public class GitController : Controller
    {
        //decimal d;

        // GET: api/Git
        [HttpGet]
        public IEnumerable<string> Get()
        {
            //if (d == d)
            //    d = d;

            //d = "";

            return new string[] { "value1", "value2" };
        }

        // GET: api/Git/5
        [HttpGet("{id}", Name = "Get")]
        public string Get(int id)
        {
            var xtatus = true;
            if (xtatus == true)
            {
                xtatus = true;
            }

            return "value";
        }
        
        // POST: api/Git
        [HttpPost]
        public void Post([FromBody]string value)
        {
            var b = 1;
            var c = 2;
            var d = 3;

            if (b == 1)
            {
                c = 3;
            }
            else if (c == 2)
            {
                d = 4;
            }
            else
            {
                d = 5;
            }

            while (b < 10)
            {
                if (b == 1)
                {
                    c = 3;
                }
                else if (c == 2)
                {
                    d = 4;
                }
                else
                {
                    d = 5;
                }

                b++;
            }

            while (c < 10)
            {

                if (b == 1)
                {
                    c = 3;
                }
                else if (c == 2)
                {
                    d = 4;
                }
                else
                {
                    d = 5;
                }

                c++;

            }


            while (d < 10)
            {

                if (b == 1)
                {
                    c = 3;
                }
                else if (c == 2)
                {
                    d = 4;
                }
                else
                {
                    d = 5;
                }

                d++;
            }

        }
        
        // PUT: api/Git/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }
        
        // DELETE: api/ApiWithActions/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
