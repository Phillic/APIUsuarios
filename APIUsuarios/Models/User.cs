using Microsoft.EntityFrameworkCore;

namespace APIUsuarios.Models
{
    [Index(nameof(Cedula), IsUnique = true)]
    public class User
    {
        public int Id { get; set; }
        public string Cedula { get; set; }
        public string Nombre { get; set; }
        public string Apellidos { get; set; }
        public string Correo_Electronico { get; set; }
        public DateTime Fecha_Ult_Acceso { get; set; }
        public string Password { get; set; }
    }
}
