using WebApplicationApi.Model;

namespace WebApplicationApi.Services
{
    public interface IStudentService
    {
        public IEnumerable<Student> GetStudents();
        public Student? GetStudent(int id);
        public void Create(Student student);
        public Student Update(int id, Student student);

        public void Delete(int id); 

    }
}
