using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using WebApplicationApi.Model;

namespace WebApplicationApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class NiteshController : ControllerBase
    {
        //verbs
        //get post put patch delete
        static List<Student> students = new List<Student>()
        {
            new Student() { Id = 1, Name = "A" },
            new Student() { Id = 2, Name = "B" },
            new Student() { Id = 3, Name = "C" },
            new Student() { Id = 4, Name = "D" },
            new Student() { Id = 5, Name = "E" }
        };

        public NiteshController()
        {
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(students);
        }

        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            var student = students.SingleOrDefault(x => x.Id == id);
            if (student is null)
            {
                return NotFound("No students were found");
            }
            return Ok(student);
        }

        [HttpPost]
        public IActionResult Post(Student student)
        {
            students.Add(student);
            return Ok(student);
            //return Created(new Uri("/api/Nitesh/" + student.Name), student);
        }

        [HttpPut("{id:int}")]
        public IActionResult Put(int id, Student student)
        {
            var studentFind = students.SingleOrDefault(x => x.Id == id);
            if (studentFind is null)
            {
                return NotFound("Student not found");
            }
            var index = students.IndexOf(studentFind);

            students[index] = student;
            return Ok(student);
        }

        [HttpDelete("{id:int}")]
        public IActionResult Delete(int id)
        {
            var studentFind = students.SingleOrDefault(x => x.Id == id);
            if (studentFind is null)
            {
                return NotFound("Student not found");
            }
            students.Remove(studentFind);
            return NoContent();
        }
    }
}
