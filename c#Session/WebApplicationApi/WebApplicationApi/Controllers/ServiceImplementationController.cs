using Microsoft.AspNetCore.Mvc;
using WebApplicationApi.Model;
using WebApplicationApi.Services;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplicationApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ServiceImplementationController : ControllerBase
    {
        private readonly IStudentService _service;
        public ServiceImplementationController(IStudentService studentService)
        {
            _service = studentService;
        }
        // GET: api/<ServiceImplementationController>
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_service.GetStudents());
        }

        // GET api/<ServiceImplementationController>/5
        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            return Ok(_service.GetStudent(id));
        }

        // POST api/<ServiceImplementationController>
        [HttpPost]
        public IActionResult Post([FromBody] Student student)
        {
            _service.Create(student);
            return Ok("Created");
        }

        // PUT api/<ServiceImplementationController>/5
        [HttpPut("{id}")]
        public IActionResult Put(int id, [FromBody] Student student)
        {
            return Ok(_service.Update(id, student));
        }

        // DELETE api/<ServiceImplementationController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _service.Delete(id)
            return NoContent();
        }
    }
}
