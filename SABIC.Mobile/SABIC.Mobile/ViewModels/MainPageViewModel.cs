using System;
using System.Windows.Input;
using SABIC.Mobile.Services;
using Xamarin.Forms;

namespace SABIC.Mobile.ViewModels
{
	public class MainPageViewModel : BaseViewModel
    {
        public ICommand StartRecord { private set; get; }

        public ICommand StopRecording { private set; get; }

        private string _resultLabel;
        public string ResultLabel
        {
            get => _resultLabel;
            set => SetProperty(ref _resultLabel, value);
        }

        public MainPageViewModel()
		{

            StartRecord = new Command(execute: async () =>
            {
                ResultLabel = await DependencyService.Get<IAudioRecorderService>().StartRecordingAsync();
            });

            StopRecording = new Command(execute: async () =>
            {
                ResultLabel = await DependencyService.Get<IAudioRecorderService>().StopRecordingAsync();
            });
        }
	}
}

