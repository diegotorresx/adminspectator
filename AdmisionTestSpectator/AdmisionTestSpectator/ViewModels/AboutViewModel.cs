using System;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace AdmisionTestSpectator.ViewModels
{
    public class AboutViewModel : BaseViewModel
    {
        public AboutViewModel()
        {
            Title = "About";
            OpenWebCommand = new Command(async () => await Browser.OpenAsync("https://developers.google.com/fit/rest/v1/get-started?hl=es-419"));
        }

        public ICommand OpenWebCommand { get; }
    }
}