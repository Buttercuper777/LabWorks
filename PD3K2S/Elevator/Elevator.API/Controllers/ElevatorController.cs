using Elevator.API.Domain;
using Elevator.API.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Elevator.API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ElevatorController : ControllerBase
    {
        private readonly ApplicationContext _context;

        public ElevatorController(ApplicationContext context)
        {
            _context = context;
        }


        [HttpGet]
        [Route("allfields")]
        public List<Lift> GetAllFields()
        {
            
            List<Lift> list = _context.Elevator.ToList();
  
            return list;
        }

        [HttpGet("{id}")]
        public IActionResult Get(string id)
        {
            var lift = _context.Find<Lift>(Guid.Parse(id));
            return Ok(lift);
        }

        [Route("createfield")]
        [HttpPost]
        public IActionResult Post([FromBody] Lift lift)
        {
            _context.Add(lift);
            _context.SaveChanges();
            return Ok();
        }

        //([FromHeader(Name="User-Agent")]

        [Route("editfloor")]
        [HttpPost]

        public IActionResult EditActFloor([FromForm]string id, [FromForm] string floor)
        {
            var lift = _context.Find<Lift>(Guid.Parse(id));
            if(lift != null)
            {
                Int32.TryParse(floor, out int j);
                lift.ActFloor = j;
                _context.Update(lift);
                _context.SaveChanges();
            }
            else
            {
                BadRequest();
            }

            return Ok(lift);
        }
    }
    
}
