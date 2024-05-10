using Grpc.Net.Client.Balancer;
using MetroLog.Maui;
using Microsoft.Extensions.Logging;

namespace MauiApp2;


public partial class MainPage : ContentPage
{
	int count = 0;
	string text = "\n++++++++++++++ OnCounterClicked MainPage {DT}";
	//carpeta de los Logs de la app
	private const string FILE_LOG_NAME = "BroxelLog";

		private string _logDirectory = MauiProgram.PATH_LOG+"/"+MauiProgram.FILE_LOG_NAME;

	ILogger<MainPage> _logger;
	private readonly HttpClient _httpClient;
	
	public MainPage(ILogger<MainPage> logger, HttpClient httpClient)
	{
		InitializeComponent();
		_logger = logger;
		_httpClient = httpClient;
	}

	private void OnCounterClicked(object sender, EventArgs e)
	{
		count++;

		if (count == 1)
			CounterBtn.Text = $"{ text }Clicked {count} time";
		else
			CounterBtn.Text = $"Clicked {count} times";

		_logger.LogInformation(CounterBtn.Text , DateTime.UtcNow.ToLongTimeString());
		Console.WriteLine(text);
	
		SemanticScreenReader.Announce(CounterBtn.Text);
		
	}

	public async void OnSendGcpClicked(object sender, EventArgs e)
	{
		bool respuesta = await DisplayAlert("Alerta", "¿Esta usted de acuerdo en enviar sus actividades a Broxel?", "Acepto", "Cancelar");
		if(respuesta)
		{
			var customFileTypes = new  FilePickerFileType (new Dictionary<DevicePlatform, IEnumerable<string>> 
			{
				{ DevicePlatform.Android, new[] {"*/*.log", "*/*.Log", "*/*.LOG"} },//{"appllication/log"} },
				//{ DevicePlatform.iOS,     new[] {"*/*"} },
				//{ DevicePlatform.Tizen,   new[] {"*/*"} },
			});

			PickOptions options = new PickOptions();
			await PickToSend(options);
		}
	}

	public async Task<FileResult> PickToSend(PickOptions options)
	{
		try
		{
			var result = await FilePicker.Default.PickAsync(options);
			if(result != null )
			{
				using var stream = await result.OpenReadAsync();
				var broxelLog = ImageSource.FromStream(() => stream);
				await UploadFileAsync(stream, result.FileName);
			}
			//return result;
		}catch (Exception ex)
		{
			ex.Message.ToString();
		}
		return null;
	}

	async Task UploadFileAsync(Stream fileStream, string filename)
	{
		try
		{
			var content = new MultipartFormDataContent();
			content.Headers.ContentDisposition = new System.Net.Http.Headers.ContentDispositionHeaderValue("form-data");
			var contenido = new StreamContent(fileStream, (int)fileStream.Length);
			Console.WriteLine(filename + "en upload" );

			content.Add(contenido,"file",filename);
			//Console.WriteLine(content.FirstOrDefault().ReadAsStringAsync());
			var response = await _httpClient.PostAsync("v2/stream/",content);
			if(response.IsSuccessStatusCode)
			{
				var file = await response.Content.ReadAsStringAsync();
				System.Diagnostics.Debug.WriteLine(file);
				await DisplayAlert("Mensaje","registro de actividades enviado","ok");
			}
		}
		catch(HttpRequestException ex)
		{
			await DisplayAlert("Mensaje","Upps! algo ocurrio durante el envio","ok");
			Console.WriteLine( ex.Message.ToString() );
		}

	}
	// línea para tomar la ruta de archivo 
	//var files = Directory.GetFiles(<FolderPath>)
	
}

