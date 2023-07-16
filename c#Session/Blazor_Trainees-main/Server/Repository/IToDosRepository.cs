using BlazorApp.Shared;

namespace BlazorApp.Server.Repository
{
    public interface IToDosRepository
    {
        Task<List<ToDo>> GetAllAsync();
        Task<ToDo?> GetByIdAsync(int id);
        Task<ToDo> CreateAsync(ToDo todo);
        Task<ToDo> UpdateAsync(ToDo todo);
        Task DeleteAsync(ToDo todo);
    }
}
