using Application.Services;
using Core.Interfaces;
using InfraStructure.Data;
using UseCase.Eventos;

using InfraStructure.Data;
using Microsoft.EntityFrameworkCore;
using Microsoft.OpenApi.Models;

var builder = WebApplication.CreateBuilder(args);

// Configurar o Kestrel para escutar na porta 5000
// builder.WebHost.ConfigureKestrel(serverOptions =>
// {
//     serverOptions.ListenAnyIP(5000);
// });

// Configurar o Swagger
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen(c =>
{
     c.SwaggerDoc("v1", new() { Title = "My API", Version = "v1" });
    
    // Optional: Include XML comments if you have them
    // var xmlFile = $"{System.Reflection.Assembly.GetExecutingAssembly().GetName().Name}.xml";
    // var xmlPath = Path.Combine(AppContext.BaseDirectory, xmlFile);
    // c.IncludeXmlComments(xmlPath);
 

});



// Configurar o DbContext com a Connection String
var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<ApplicationDbContext>(options =>
    options.UseSqlServer(connectionString));

// Add services to the container.
builder.Services.AddScoped<IEventoRepository, EventoRepository>();
builder.Services.AddScoped<GetEventoByIdUseCase>();
builder.Services.AddScoped<EventoService>();
 


builder.Services.AddControllers();

var app = builder.Build();


 

// app.MapControllers();

// Configure the HTTP request pipeline.
// Habilitar Swagger
if (app.Environment.IsDevelopment() || app.Environment.IsProduction())
{
    app.UseSwagger();
    app.UseSwaggerUI(c =>
    {
        c.SwaggerEndpoint("/swagger/v1/swagger.json", "My API V1");
        c.RoutePrefix = string.Empty; // Serve Swagger UI at the root
        c.DocumentTitle = "My API Documentation"; // Set the page title
        c.DefaultModelsExpandDepth(-1); // Hide model schema
        c.DisplayRequestDuration(); // Show request duration
        c.EnableValidator(); // Enable validator
        c.InjectStylesheet("/swagger-ui/custom.css"); // Optional: Inject custom CSS
        c.InjectJavascript("/swagger-ui/custom.js"); // Optional: Inject custom JavaScript
    });
 
}

app.UseHttpsRedirection();
app.UseAuthorization();
app.MapControllers();

 

var summaries = new[]
{
    "Freezing", "Bracing", "Chilly", "Cool", "Mild", "Warm", "Balmy", "Hot", "Sweltering", "Scorching"
};

 

app.MapGet("/weatherforecast", () =>
{
    var forecast =  Enumerable.Range(1, 5).Select(index =>
        new WeatherForecast
        (
            DateOnly.FromDateTime(DateTime.Now.AddDays(index)),
            Random.Shared.Next(-20, 55),
            summaries[Random.Shared.Next(summaries.Length)]
        ))
        .ToArray();
    return forecast;
})
.WithName("GetWeatherForecast")
.WithOpenApi();

app.Run();

record WeatherForecast(DateOnly Date, int TemperatureC, string? Summary)
{
    public int TemperatureF => 32 + (int)(TemperatureC / 0.5556);
}
