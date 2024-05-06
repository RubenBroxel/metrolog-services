using Grpc.Net.Client.Balancer;
using MetroLog.Maui;
using Microsoft.Extensions.Logging;

namespace MauiApp2;

public partial class MainPage : ContentPage
{
	int count = 0;
	string text = "\n++++++++++++++ OnCounterClicked MainPage {DT}";

	ILogger<MainPage> _logger;
	private readonly HttpClient _httpClient;
	
	public MainPage(ILogger<MainPage> logger, HttpClient httpClient)
	{
		InitializeComponent();
		BindingContext = new LogController();
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
				{ DevicePlatform.Android, new[] {"appllication/log"} },
				{ DevicePlatform.iOS,     new[] {"*/*"} },
				{ DevicePlatform.Tizen,   new[] {"*/*"} },
			});

			var results = await FilePicker.PickMultipleAsync(new PickOptions
			{
				FileTypes = customFileTypes
			});
	
			foreach (var result in results)
			{
				await DisplayAlert("You picked...", result.FileName, "OK");
			}
			//await DisplayAlert("Información","Registro enviado","OK");
		}
	}

	// línea para tomar la ruta de archivo 
	//var files = Directory.GetFiles(<FolderPath>)
	
}

