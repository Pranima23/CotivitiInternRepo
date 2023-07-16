using BlazorApp.Server.Repository;
using BlazorApp.Shared;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BlazorApp.Server.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ToDosController : ControllerBase
    {
        IToDosRepository _repo;
        public ToDosController(IToDosRepository repo)
        {
            _repo = repo;
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<ToDo>>> GetToDo()
        {
            if (_repo.GetAllAsync() == null)
            {
                return NotFound();
            }
            return await _repo.GetAllAsync();
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<ToDo>> GetToDo(int id)
        {
            var result = await _repo.GetByIdAsync(id);
            if (result == null)
            {
                return NotFound();
            }
            return result;
        }

        [HttpPost]
        public async Task<ActionResult<ToDo>> Post([FromBody] ToDo value)
        {
            var result = await _repo.CreateAsync(value);
            return CreatedAtAction("Todo/Get", new { id = result.Id }, result);
        }

        [HttpPut("{id}")]
        public async Task<IActionResult> Put(int id, [FromBody] ToDo value)
        {
            var result = await _repo.GetByIdAsync(id);

            if (result == null)
            {
                return BadRequest();
            }
            if (id != result.Id)
            {
                return BadRequest();
            }
            //Updating
            result.Title = value.Title;
            result.Description = value.Description;
            result.CreatedDate = value.CreatedDate;

            await _repo.UpdateAsync(result);
            return NoContent();
        }

        // DELETE api/<ToDosController>/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> Delete(int id)
        {
            var result = await _repo.GetByIdAsync(id);

            if (result == null)
            {
                return BadRequest();
            }
            await _repo.DeleteAsync(result);
            return NoContent();
        }
    }
}
