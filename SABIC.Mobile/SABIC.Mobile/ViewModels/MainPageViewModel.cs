using System;
namespace SABIC.Mobile.ViewModels
{
	public class MainPageViewModel : BaseViewModel
    {
        private string _demoLabel;
        public string DemoLabel
        {
            get => _demoLabel;
            set => SetProperty(ref _demoLabel, value);
        }

        public MainPageViewModel()
		{
            DemoLabel = "Hello Word";
        }
	}
}

