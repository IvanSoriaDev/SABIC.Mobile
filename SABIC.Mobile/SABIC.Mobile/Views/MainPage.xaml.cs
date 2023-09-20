using System;
using System.Collections.Generic;
using SABIC.Mobile.ViewModels;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Essentials;
using System;
using System.Threading.Tasks;
using System.IO;
using SABIC.Mobile.Services;

namespace SABIC.Mobile.Views
{	
	public partial class MainPage : ContentPage
	{
        public MainPage ()
		{
			InitializeComponent ();
            BindingContext = App.ServiceProvider.GetService(typeof(MainPageViewModel));


        }

        private async void StartRecordingButton_Clicked(object sender, EventArgs e)
        {
            
        }

        private async void StopRecordingButton_Clicked(object sender, EventArgs e)
        {
            await DependencyService.Get<IAudioRecorderService>().StopRecordingAsync();
        }


    }
}

