using AdmisionTestSpectator.Models;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Auth;
using Xamarin.Forms;

namespace AdmisionTestSpectator.Services
{
    public class GoogleServices : IGoogleServices<Item>
    {
        private static OAuth2Authenticator authenticator;
        private static string accessToken;
        private List<Item> items;
        
        public async Task<IEnumerable<Item>> GetFitnessActivityData()
        {
            string token = await Authenticator();

            if (accessToken != null)
            {
                var client = new HttpClient();

                client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", accessToken);
                
                var response = await client.GetAsync("https://www.googleapis.com/auth/fitness.activity.read");

                var stepsData = await FetchSteps();
                var distanceData = await FetchDistance();
                var caloriesData = await FetchCalories();
                
                if (response.IsSuccessStatusCode)
                {
                    items = new List<Item>
                    {
                        new Item { Id = "1", Description = "Steps", Text = stepsData.ToString() },
                        new Item { Id = "2", Description = "Distance", Text = distanceData.ToString() },
                        new Item { Id = "2", Description = "Calories", Text = caloriesData.ToString() }
                    };
                    return await Task.FromResult(items);
                }
                else
                {
                    items = new List<Item>
                    {
                        new Item { Id = "1", Description = "Failed to fetch data:", Text = response.StatusCode.ToString() },
                    };
                    return await Task.FromResult(items);
                }
            }
            else
            {
                items = new List<Item>
                    {
                        new Item { Id = "1", Description = "Failed to fetch data:", Text = "Acess Token is null or empty" }
                    };
                return await Task.FromResult(items);
            }
        }

        private async Task<string> Authenticator()
        {
            try
            {
                authenticator = new OAuth2Authenticator(
                    clientId: "295452090802-6ilejttpvm8gc23g03vqluuu73c6o1eo.apps.googleusercontent.com",
                    scope: "https://www.googleapis.com/auth/fitness.activity.read",
                    authorizeUrl: new Uri("https://accounts.google.com/o/oauth2/v2/auth"),
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

                authenticator.Error += (sender, e) =>
                {
                    Debug.WriteLine("Authentication error: " + e.Message);
                    tcs.SetResult(null);
                };

                Device.BeginInvokeOnMainThread(() =>
                {
                    try
                    {
                        var presenter = new Xamarin.Auth.Presenters.OAuthLoginPresenter();
                        presenter.Login(authenticator);
                    }
                    catch (Exception ex)
                    {
                        System.Diagnostics.Debug.WriteLine("Error initiating login: " + ex.ToString());
                    }
                });

                accessToken = await tcs.Task;
                return accessToken;
            }
            catch (Exception e)
            {
                return e.Message;
            }
        }
        public async Task<string> FetchSteps()
        {
            var requestBody = new JObject(
                new JProperty("aggregateBy", new JArray(
                    new JObject(
                        new JProperty("dataSourceId", "derived:com.google.step_count.delta:com.google.android.gms:estimated_steps")
                    ))),
                new JProperty("bucketByTime", new JObject(
                    new JProperty("durationMillis", 86400000)  // Aggregate data by days
                )),
                new JProperty("startTimeMillis", new DateTimeOffset(new DateTime(2022, 1, 1)).ToUnixTimeMilliseconds()),
                new JProperty("endTimeMillis", new DateTimeOffset(DateTime.UtcNow).ToUnixTimeMilliseconds())
            );
            return await PostFitnessDataAsync(requestBody);
        }

        public async Task<string> FetchDistance()
        {
            var requestBody = new JObject(
                new JProperty("aggregateBy", new JArray(
                    new JObject(
                        new JProperty("dataSourceId", "derived:com.google.distance.delta:com.google.android.gms:merge_distance_delta")
                    ))),
                new JProperty("bucketByTime", new JObject(
                    new JProperty("durationMillis", 86400000)  // Aggregate data by days
                )),
                new JProperty("startTimeMillis", new DateTimeOffset(new DateTime(2022, 1, 1)).ToUnixTimeMilliseconds()),
                new JProperty("endTimeMillis", new DateTimeOffset(DateTime.UtcNow).ToUnixTimeMilliseconds())
            );
            return await PostFitnessDataAsync(requestBody);
        }

        public async Task<string> FetchCalories()
        {
            var requestBody = new JObject(
                new JProperty("aggregateBy", new JArray(
                    new JObject(
                        new JProperty("dataSourceId", "derived:com.google.calories.expended:com.google.android.gms:merge_calories_expended")
                    ))),
                new JProperty("bucketByTime", new JObject(
                    new JProperty("durationMillis", 86400000)  // Aggregate data by days
                )),
                new JProperty("startTimeMillis", new DateTimeOffset(new DateTime(2022, 1, 1)).ToUnixTimeMilliseconds()),
                new JProperty("endTimeMillis", new DateTimeOffset(DateTime.UtcNow).ToUnixTimeMilliseconds())
            );
            return await PostFitnessDataAsync(requestBody);
        }

        private async Task<string> PostFitnessDataAsync(JObject requestBody)
        {
            using (var client = new HttpClient())
            {
                client.DefaultRequestHeaders.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                var content = new StringContent(requestBody.ToString(), Encoding.UTF8, "application/json");
                var response = await client.PostAsync("https://www.googleapis.com/fitness/v1/users/me/dataset:aggregate", content);
                if (!response.IsSuccessStatusCode)
                {
                    throw new Exception($"Failed to fetch data: {response.StatusCode}");
                }
                return await response.Content.ReadAsStringAsync();
            }
        }
    }
}
