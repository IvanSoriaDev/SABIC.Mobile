using SABIC.Mobile.ViewModels;
using System.Threading.Tasks;

namespace SABIC.Mobile.Services
{
    public interface INavigationService
	{
        Task NavigateToAsync<TViewModel>() where TViewModel : BaseViewModel;

        Task NavigateToAsync<TViewModel>(object parameter) where TViewModel : BaseViewModel;
    }
}

