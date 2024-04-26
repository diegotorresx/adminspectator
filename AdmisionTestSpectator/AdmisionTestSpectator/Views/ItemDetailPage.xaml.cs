using AdmisionTestSpectator.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace AdmisionTestSpectator.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}