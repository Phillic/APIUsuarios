using APIUsuarios.Models;
using APIUsuarios.Repositories;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace APIUsuarios.Services
{
    public class UserService : IUserService
    {
        private readonly IUserRepository _userRepository;

        public UserService(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        public async Task<IEnumerable<User>> GetAllUsers() => await _userRepository.GetAllUsers();

        public async Task<User> GetUserById(int id) => await _userRepository.GetUserById(id);

        public async Task AddUser(User user) => await _userRepository.AddUser(user);

        public async Task UpdateUser(User user) => await _userRepository.UpdateUser(user);

        public async Task DeleteUser(int id) => await _userRepository.DeleteUser(id);

        public async Task<bool> ValidateUserLogin(string cedula, string password)
        {
            var user = await _userRepository.GetUserByCedula(cedula);
            if (user == null || user.Password != password) 
                return false;

            user.Fecha_Ult_Acceso = DateTime.UtcNow;
            await _userRepository.UpdateUser(user);

            return true;
        }

        public async Task<User> GetUserByCedula(string cedula)
        {
            return await _userRepository.GetUserByCedula(cedula);
        }

        public async Task UpdateLastAccess(string cedula)
        {
            var user = await _userRepository.GetUserByCedula(cedula);
            if (user != null)
            {
                user.Fecha_Ult_Acceso = DateTime.UtcNow;
                await _userRepository.UpdateUser(user);
            }
        }


    }
}
