using BlazorApp.Server.Repository;
using BlazorApp.Shared;
using Microsoft.AspNetCore.Mvc;
using System.Runtime.CompilerServices;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BlazorApp.Server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class StudentsController : ControllerBase
    {
        private IStudentRepository _studentRepository;
        public StudentsController(IStudentRepository studentRepository)
        {
            _studentRepository = studentRepository;
        }
        // GET: api/<StudentsController>
        [HttpGet]
        public async Task<IActionResult> Get()
        {
            return Ok(await _studentRepository.GetAllAsync());
        }

        // GET api/<StudentsController>/5
        [HttpGet("{id}")]
        public async Task<IActionResult> Get(int id)
        {
            var result = await _studentRepository.GetByIDAsync(id);
            if (result is null)
                return NotFound("Item does not exists");
            return Ok(result);
        }

        // POST api/<StudentsController>
        [HttpPost]
        public async Task<IActionResult> Post([FromBody()] Student value)
        {
            var result = await _studentRepository.AddAsync(value);
            return Created(new Uri(@"api/Students/" + result.Id), result);
        }

        // PUT api/<StudentsController>/5
        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, [FromBody()] Student value)
        {
            var result = await _studentRepository.GetByIDAsync(id);
            if (result is not null)
            {
                result.Name = value.Name;
                await _studentRepository.Update(result);
                return Ok(result);
            }
            return NotFound("Item not found");
        }

        // DELETE api/<StudentsController>/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            var result = await _studentRepository.GetByIDAsync(id);
            if (result is null)
                return NotFound(result);

            await _studentRepository.DeleteAsync(result);
            return Ok();
        }
    }
}
