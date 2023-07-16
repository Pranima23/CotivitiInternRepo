using BlazorApp.Shared;
using Microsoft.EntityFrameworkCore;
using System.Collections;

namespace BlazorApp.Server.Repository
{
    public interface IStudentRepository
    {
        public Task<IEnumerable<Student>> GetAllAsync();
        public Task<Student>? GetByIDAsync(int id);
        public Task<Student> AddAsync(Student student);
        public Task Update(Student student);
        public Task DeleteAsync(Student student);
    }
    public class StudentRepository : IStudentRepository
    {
        AppDbContext _context;
        public StudentRepository(AppDbContext context)
        {
            _context = context;
        }


        public async Task<IEnumerable<Student>> GetAllAsync()
        {
            return await _context.Students.ToListAsync();
        }

        public async Task<Student>? GetByIDAsync(int id)
        {
            var result = await _context.Students.FindAsync(id);
            if (result == null)
                return null;
            return result;
        }

        public async Task Update(Student student)
        {
            _context.Update(student);
            await _context.SaveChangesAsync();
        }

        public async Task<Student> AddAsync(Student student)
        {
            _context.Students.Add(student);
            await _context.SaveChangesAsync();
            return student;
        }

        public async Task DeleteAsync(Student student)
        {
            _context.Remove(student);
            await _context.SaveChangesAsync();    
        }
    }
}
