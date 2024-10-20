using Microsoft.AspNetCore.Components.Web;
using Microsoft.AspNetCore.Components.WebAssembly.Hosting;
using RickAndMorty_API_Blazor;

var builder = WebAssemblyHostBuilder.CreateDefault(args);
builder.RootComponents.Add<App>("#app");
builder.RootComponents.Add<HeadOutlet>("head::after");

builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri("https://rickandmortyapi.com/api/") });


await builder.Build().RunAsync();

/**
    http://localhost:5745 -> https://rickandmortyapi.com/
    GET -> /character -> Json
    GET -> /character/1 -> Json

    1- Componente que embede directamente y carga todos los personajes
    2- Componente que le envio 1 parametro por la url y me carga el detalle del personaje.
**/