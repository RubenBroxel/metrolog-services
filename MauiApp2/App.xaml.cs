using MetroLog.Maui;

namespace MauiApp2;

public partial class App : Application
{
	public App()
	{
		InitializeComponent();

		MainPage = new AppShell();
		
        LogController.InitializeNavigation
		(
            page => MainPage!.Navigation.PushModalAsync(page),
            () => MainPage!.Navigation.PopModalAsync()
		);
	}
}
