using System;
using SABIC.Mobile.Services;

namespace SABIC.Mobile.ViewModels
{
	public class WordEditorPageViewModel : BaseViewModel
	{
        private string _texttoModify;
        public string TexttoModify
        {
            get => _texttoModify;
            set => SetProperty(ref _texttoModify, value);
        }

        public WordEditorPageViewModel(INavigationService navigationService) : base(navigationService)
		{
		}
	}
}

