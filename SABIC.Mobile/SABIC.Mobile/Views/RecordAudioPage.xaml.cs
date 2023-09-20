using System;
using System.Collections.Generic;
using SABIC.Mobile.ViewModels;
using Xamarin.Forms;

namespace SABIC.Mobile.Views
{	
	public partial class RecordAudioPage : ContentPage
	{	
		public RecordAudioPage ()
		{
			InitializeComponent ();
            BindingContext = App.ServiceProvider.GetService(typeof(RecordAudioPageViewModel));
        }
	}
}

