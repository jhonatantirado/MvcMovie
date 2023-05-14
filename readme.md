Introducción a ASP.NET Core MVC
Basado en https://learn.microsoft.com/es-es/aspnet/core/tutorials/first-mvc-app/start-mvc?view=aspnetcore-7.0&tabs=visual-studio


Cadena de coneccion de base de datos


Se deben establecer como variables de entorno.
En el caso de Mac, se debe usar el archivo "launchSettings.json"


Con usuario SA de SQL Server (funciona en Mac y Windows)

Server=localhost;Database=MvcMovieContext-7dc5;User Id=sa;Password=yourpassword;TrustServerCertificate=True;MultipleActiveResultSets=true;


Con Autenticacion de Windows (funciona en Windows)

Server=localhost;Database=MvcMovieContext-7dc5;Trusted_Connection=true;TrustServerCertificate=True;MultipleActiveResultSets=true;


Migraciones de base de datos
Primero debe crear la base de datos vacia, manualmente en SQL Server

Crear migracion
dotnet ef migrations add InitialCreate

Generar script
dotnet ef migrations script --idempotent

Otros tutoriales:

Tutorial: Introducción a EF Core en una aplicación web de ASP.NET Core MVC
https://learn.microsoft.com/es-es/aspnet/core/data/ef-mvc/intro?view=aspnetcore-7.0


Razor Pages con Entity Framework Core en ASP.NET Core: Tutorial 1 de 8
https://learn.microsoft.com/es-es/aspnet/core/data/ef-rp/intro?view=aspnetcore-7.0&tabs=visual-studio

ASP.NET Core MVC con EF Core: serie de tutoriales
https://learn.microsoft.com/es-es/aspnet/core/data/ef-mvc/?view=aspnetcore-7.0

Applying Migrations
https://learn.microsoft.com/en-us/ef/core/managing-schemas/migrations/applying?tabs=dotnet-core-cli