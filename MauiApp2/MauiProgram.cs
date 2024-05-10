using MetroLog.Operators;
using MetroLog.MicrosoftExtensions;
using Microsoft.Extensions.Logging;


namespace MauiApp2;

public static class MauiProgram
{
	//Ruta absoluta del emulador de andrid
	public static string  PATH_LOG = "/storage/emulated/0/Android/data/com.companyname.mauiapp2/";

	//carpeta de los Logs de la app
	public const string FILE_LOG_NAME = "BroxelLog";
	//private static string paths = FileSystem.CacheDirectory.ToString();

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
                BaseAddress = new Uri("http://10.100.8.29:5264/")
            };

        });

        builder.Logging
            .AddTraceLogger(
                options =>
                {
                    options.MinLevel = LogLevel.Trace;
                    options.MaxLevel = LogLevel.Critical;
                }) 
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
                    options.RetainDays = 1;
                    options.FolderPath = Path.Combine( PATH_LOG, FILE_LOG_NAME);
                });

        builder.Services.AddSingleton(LogOperatorRetriever.Instance);
	    builder.Services.AddSingleton<MainPage>();

    #if DEBUG
		builder.Logging.AddDebug();
    #endif

		return builder.Build();
	}
}
