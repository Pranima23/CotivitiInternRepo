using BlazorApp.Shared;

namespace BlazorApp.Server.Repository
{
    public class ToDosMySqlRepo : IToDosRepository
    {
        public Task<ToDo> CreateAsync(ToDo todo)
        {
            throw new NotImplementedException();
        }

        public Task DeleteAsync(ToDo todo)
        {
            throw new NotImplementedException();
        }

        public Task<List<ToDo>> GetAllAsync()
        {
            throw new NotImplementedException();
        }

        public Task<ToDo?> GetByIdAsync(int id)
        {
            throw new NotImplementedException();
        }

        public Task<ToDo> UpdateAsync(ToDo todo)
        {
            throw new NotImplementedException();
        }
    }
}
