using APIUsuarios.Models;

namespace APIUsuarios.Services
{
    public interface IUserService
    {
        Task<IEnumerable<User>> GetAllUsers();
        Task<User> GetUserById(int id);
        Task AddUser(User user);
        Task UpdateUser(User user);
        Task DeleteUser(int id);
        //Task<bool> UpdateLastAccess(string cedula);
        Task<User> GetUserByCedula(string cedula);
        Task<bool> ValidateUserLogin(string cedula, string password);
        Task UpdateLastAccess(string cedula);
    }
}
