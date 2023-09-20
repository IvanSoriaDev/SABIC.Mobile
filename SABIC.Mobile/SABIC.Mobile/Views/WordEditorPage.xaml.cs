using System;
using System.Collections.Generic;
using SABIC.Mobile.ViewModels;
using Xamarin.Forms;

namespace SABIC.Mobile.Views
{	
	public partial class WordEditorPage : ContentPage
	{	
		public WordEditorPage ()
		{
			InitializeComponent ();
            BindingContext = App.ServiceProvider.GetService(typeof(WordEditorPageViewModel));
        }
	}
}

