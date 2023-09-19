using System;
using System.Collections.Generic;
using SABIC.Mobile.ViewModels;
using Xamarin.Forms;

namespace SABIC.Mobile.Views
{	
	public partial class MainPage : ContentPage
	{	
		public MainPage ()
		{
			InitializeComponent ();
            BindingContext = App.ServiceProvider.GetService(typeof(MainPageViewModel));
        }
	}
}

