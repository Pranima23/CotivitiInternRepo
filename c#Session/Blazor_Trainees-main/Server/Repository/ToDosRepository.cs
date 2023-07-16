using BlazorApp.Shared;
using Microsoft.EntityFrameworkCore;

namespace BlazorApp.Server.Repository
{
    public class ToDosRepository : IToDosRepository
    {
        private AppDbContext _context;
        public ToDosRepository(AppDbContext context)
        {
            _context = context;
        }
        public async Task<List<ToDo>> GetAllAsync()
        {
            return await _context.ToDos.ToListAsync();
        }
        public async Task<ToDo?> GetByIdAsync(int id)
        {
            return await _context.ToDos.FindAsync(id);
        }
        public async Task<ToDo> CreateAsync(ToDo todo)
        {
            _context.ToDos.Add(todo);
            var id = await _context.SaveChangesAsync();
            todo.Id = id;
            return todo;
        }
        public async Task<ToDo> UpdateAsync(ToDo todo)
        {
            _context.ToDos.Update(todo);
            await _context.SaveChangesAsync();
            return todo;
        }
        public async Task DeleteAsync(ToDo todo)
        {
            _context.Remove(todo);
            await _context.SaveChangesAsync();
        }

    }
}
