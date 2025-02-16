using Microsoft.EntityFrameworkCore.SqlServer;

using APIUsuarios.Data;
using Microsoft.EntityFrameworkCore;
using APIUsuarios.Repositories;
using APIUsuarios.Services;

var builder = WebApplication.CreateBuilder(args);

var myCorsPolicy = "_myCorsPolicy";

builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));

builder.Services.AddScoped<IUserRepository, UserRepository>();
builder.Services.AddScoped<IUserService, UserService>();

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

app.UseSwagger();
app.UseSwaggerUI();

app.UseAuthorization();
app.MapControllers();
app.Run();

builder.Services.AddCors(options =>
{
    options.AddPolicy(name: myCorsPolicy,
        policy =>
        {
            policy.WithOrigins("http://localhost:4200")
                  .AllowAnyMethod()
                  .AllowAnyHeader();
        });
});

app.UseCors(myCorsPolicy);