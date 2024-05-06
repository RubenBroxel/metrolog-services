using MetroLog.Operators;
using MetroLog.MicrosoftExtensions;
using Microsoft.Extensions.Logging;


namespace MauiApp2;

public static class MauiProgram
{
	//Ruta absoluta del emulador de andrid
	public static string  PATH_LOG = "/storage/emulated/0/Android/data/com.companyname.mauiapp2/";

	//carpeta de los Logs de la app
	private const string FILE_LOG_NAME = "BroxelLog";
	private static string paths = FileSystem.CacheDirectory.ToString();

	//clase principal del proyecto
	public static MauiApp CreateMauiApp()
	{
		var builder = MauiApp.CreateBuilder();
		builder
			.UseMauiApp<App>()
			.ConfigureFonts(fonts =>
			{
				fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
				fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
			});

        builder.Services.AddTransient<HttpClient>(o => 
        {
            return new HttpClient()
            {
                BaseAddress = new Uri("http://localhost:5264/upload/")
            };

        });

        builder.Logging
            .AddTraceLogger(
                options =>
                {
                    options.MinLevel = LogLevel.Trace;
                    options.MaxLevel = LogLevel.Critical;
                }) // Will write to the Debug Output
            .AddInMemoryLogger(
                options =>
                {
                    options.MaxLines = 1024;
                    options.MinLevel = LogLevel.Debug;
                    options.MaxLevel = LogLevel.Critical;
                })
            .AddStreamingFileLogger(
                options =>
                {
                    options.RetainDays = 2;
                    options.FolderPath = Path.Combine( PATH_LOG, FILE_LOG_NAME);
                });
            /*.AddConsoleLogger(
                options =>
                {
                    options.MinLevel = LogLevel.Information;
                    options.MaxLevel = LogLevel.Critical;
                }); // Will write to the Console Output (logcat for android)*/

        builder.Services.AddSingleton(LogOperatorRetriever.Instance);
	    builder.Services.AddSingleton<MainPage>();

    
		return builder.Build();
	}
}
