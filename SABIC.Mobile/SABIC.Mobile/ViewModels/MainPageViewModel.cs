using System.Windows.Input;
using SABIC.Mobile.Services;
using Xamarin.Forms;

namespace SABIC.Mobile.ViewModels
{
    public class MainPageViewModel : BaseViewModel
    {
        public ICommand NavigateToRecordCommand { private set; get; }

        public ICommand NavigateToWordFormatterCommand { private set; get; }

        public MainPageViewModel(INavigationService navigationService) : base (navigationService)
		{
            NavigateToRecordCommand = new Command(execute: async () =>
            {
                await _navigationService.NavigateToAsync<RecordAudioPageViewModel>();
            });

            NavigateToWordFormatterCommand = new Command(execute: async () =>
            {
                await _navigationService.NavigateToAsync<WordEditorPageViewModel>();
            });
        }
	}
}

