using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Auth;

namespace AdmisionTestSpectator.Services
{
    public class GoogleServicecs : IGoogleServices
    {
        private static OAuth2Authenticator authenticator;
        private static string accessToken;
        public async Task<string> GetFitnessActivityData()
        {
            Authenticator();

            if (accessToken != null)
            {
                var client = new HttpClient();
                client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", accessToken);

                var response = await client.GetAsync("https://www.googleapis.com/auth/fitness.activity.read");

                if (response.IsSuccessStatusCode)
                {
                    return await response.Content.ReadAsStringAsync();
                }
                else
                {
                    return $"Failed to retrieve data: {response.StatusCode}";
                }
            }
            else
            {
                return "Authentication failed or was cancelled by the user.";
            }
        }

        private async void Authenticator() 
        {
            authenticator = new OAuth2Authenticator(
                clientId: "295452090802-6ilejttpvm8gc23g03vqluuu73c6o1eo.apps.googleusercontent.com",
                scope: "https://www.googleapis.com/auth/fitness.activity.read",
                authorizeUrl: new Uri("https://accounts.google.com/o/oauth2/auth"),
                redirectUrl: new Uri("com.companyname.admisiontestspectator://AdminSpectatorTest"),
                isUsingNativeUI: true
            );
            TaskCompletionSource<string> tcs = new TaskCompletionSource<string>();

            authenticator.Completed += (sender, args) =>
            {
                if (args.IsAuthenticated)
                {
                    accessToken = args.Account.Properties["access_token"];
                    tcs.SetResult(accessToken);
                }
                else
                {
                    tcs.SetResult(null);
                }
            };

            authenticator.Error += (sender, args) =>
            {
                tcs.SetResult(null);
            };

            var presenter = new Xamarin.Auth.Presenters.OAuthLoginPresenter();
            presenter.Login(authenticator);

            accessToken = await tcs.Task;
        }
    }
}
