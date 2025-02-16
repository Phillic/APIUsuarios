using APIUsuarios.Models;

namespace APIUsuarios.Repositories
{
    public interface IUserRepository
    {
        Task<IEnumerable<User>> GetAllUsers();
        Task<User> GetUserById(int id);
        Task AddUser(User user);
        Task UpdateUser(User user);
        Task DeleteUser(int id);
        Task<User> GetUserByCedula(string cedula);
    }
}
