using System.Windows.Input;
using SABIC.Mobile.Services;
using Xamarin.Forms;

namespace SABIC.Mobile.ViewModels
{
    public class MainPageViewModel : BaseViewModel
    {
        public INavigationService _navigationService;

        public ICommand NavigateToRecordCommand { private set; get; }

        public ICommand NavigateToWordFormatterCommand { private set; get; }

        public MainPageViewModel(INavigationService navigationService) 
		{
            _navigationService = navigationService;

            NavigateToRecordCommand = new Command(execute: async () =>
            {
                try
                {
                    await _navigationService.NavigateToAsync<RecordAudioPageViewModel>();
                }
                catch (System.Exception ex)
                {
                    System.Console.WriteLine(ex.Message);
                }
            });

            NavigateToWordFormatterCommand = new Command(execute: async () =>
            {
                
            });
        }
	}
}

