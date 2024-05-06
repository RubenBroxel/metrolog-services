using MetroLog.MicrosoftExtensions;
using Microsoft.Extensions.Logging;

namespace MauiApp2.Services
{
    //clase para obtener los logs generados 
    public class BroxelLoggerService 
    {
        private static readonly ILoggerFactory loggerFactory = LoggerFactory.Create(builder => builder.AddStreamingFileLogger(options =>
        {
            options.RetainDays = 2;               
            options.FolderPath = Path.Combine(FileSystem.CacheDirectory, "InfoBoardLogs");
        }));


        public static ILogger Logger(string categoryName) 
        {
            return loggerFactory.CreateLogger(categoryName);
        }
    }
}