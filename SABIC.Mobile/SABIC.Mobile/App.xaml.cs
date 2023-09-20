using System;
using Microsoft.Extensions.DependencyInjection;
using SABIC.Mobile.Services;
using SABIC.Mobile.ViewModels;
using SABIC.Mobile.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SABIC.Mobile
{
    public partial class App : Application
    {
        public static IServiceProvider ServiceProvider { get; set; }

        public App ()
        {
            InitializeComponent();

            SetupServices();

            MainPage = new NavigationPage(new Views.MainPage());
        }

        protected override void OnStart ()
        {
        }

        protected override void OnSleep ()
        {
        }

        protected override void OnResume ()
        {
        }

        private void SetupServices()
        {
            var services = new ServiceCollection();

            services.AddSingleton<INavigationService, NavigationService>();

            services.AddTransient<MainPageViewModel>();
            services.AddTransient<RecordAudioPageViewModel>();
            services.AddTransient<WordEditorPageViewModel>();

            ServiceProvider = services.BuildServiceProvider();
        }
    }
}

