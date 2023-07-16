using WebApplicationApi.Model;

namespace WebApplicationApi.Services
{
    public class StudentInMemService : IStudentService
    {
        static List<Student> students = new List<Student>()
        {
            new Student() { Id = 1, Name = "A" },
            new Student() { Id = 2, Name = "B" },
            new Student() { Id = 3, Name = "C" },
            new Student() { Id = 4, Name = "D" },
            new Student() { Id = 5, Name = "E" }
        };
        public void Create(Student student)
        {
            students.Add(student);
        }

        public void Delete(int id)
        {
            var student = GetStudent(id);
            if (student is not null)
            {
                students.Remove(student);
            }
            else
            {
                throw new Exception("Not found");
            }
        }

        public Student? GetStudent(int id)
        {
            var student = students.SingleOrDefault(x => x.Id == id);
            if (student is not null)
            {
                return student;
            }
            return null;
        }

        public IEnumerable<Student> GetStudents()
        {
            return students.OrderBy(x => x.Name);
        }

        public Student Update(int id, Student student)
        {
            var studentFind = students.SingleOrDefault(x => x.Id == id);
            var index = students.IndexOf(studentFind);
            students[index] = student;
            return student;
        }
    }
}
