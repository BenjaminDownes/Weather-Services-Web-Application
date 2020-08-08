using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Project5_Benjamin_Downes
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "WeatherService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select WeatherService.svc or WeatherService.svc.cs at the Solution Explorer and start debugging.
    public class WeatherService : IWeatherService
    {
        //I originally developed this service for Project 3
        //I am using this as a member service to be subscribed to and used by users with member authorization
        public string[] FiveDayForecast(string zip) //temperatures shown are in Celsius/Kalvin(before adding AbsoluteZero double)
        {
            String[] forecasts = new string[40];
            int i = 0;
            string apiURL = "http://api.openweathermap.org/data/2.5/forecast?zip=" + zip + "&appid=ff70c214d54bd345638568eaea2ad52d";
            string url = apiURL;
            //url to api call with zipQuery and my apiToken
            var json = new WebClient().DownloadString(url);
            var formatJson = JsonConvert.DeserializeObject<RootObject>(json);

            const double AbsoluteZero = -273.15; //to convert kalvin to celsius
            foreach (var forecast in formatJson.list)
            {
                forecasts[i] = "Date: " + forecast.dt;
                forecasts[i] += " Temp: " + (AbsoluteZero + forecast.main.temp).ToString();
                forecasts[i] += " Humidity:" + forecast.main.humidity;
                i++;
            }
            String[] FiveDay = new string[5];
            for (int k = 0; k <= 4; k++)
            {
                FiveDay[k] = forecasts[k * 8]; //get every day by getting every 8th forecast since a forecast occurs every 3hrs
            }
            return FiveDay;

        }

        //Classes below used to Deserialize JSON output from API call to OpenWeatherAPI
        //I used this tool: https://www.jsonutils.com/ to make the cooresponing classes to the JSON output
        public class MainDetail
        {
            public double temp { get; set; }
            public double temp_min { get; set; }
            public double temp_max { get; set; }
            public double pressure { get; set; }
            public double sea_level { get; set; }
            public double grnd_level { get; set; }
            public int humidity { get; set; }
            public double temp_kf { get; set; }
        }

        public class Weather
        {
            public int id { get; set; }
            public string main { get; set; }
            public string description { get; set; }
            public string icon { get; set; }
        }

        public class Clouds
        {
            public int all { get; set; }
        }

        public class Wind
        {
            public double speed { get; set; }
            public double deg { get; set; }
        }

        public class Rain
        {
            public double rain { get; set; }
        }

        public class Sys
        {
            public string pod { get; set; }
        }

        public class Forecast
        {
            [JsonConverter(typeof(UnixTimestampConverter))]
            public DateTime dt { get; set; }
            public MainDetail main { get; set; }
            public List<Weather> weather { get; set; }
            public Clouds clouds { get; set; }
            public Wind wind { get; set; }
            public Rain rain { get; set; }
            public Sys sys { get; set; }
            public string dt_txt { get; set; }
        }

        public class Coord
        {
            public double lat { get; set; }
            public double lon { get; set; }
        }

        public class City
        {
            public int id { get; set; }
            public string name { get; set; }
            public Coord coord { get; set; }
            public string country { get; set; }
        }

        public class RootObject
        {
            public string cod { get; set; }
            public double message { get; set; }
            public int cnt { get; set; }
            public List<Forecast> list { get; set; }
            public City city { get; set; }
        }
        public class UnixTimestampConverter : Newtonsoft.Json.JsonConverter
        {
            public override bool CanConvert(Type objectType)
            {
                return objectType == typeof(DateTime);
            }

            public override object ReadJson(JsonReader reader, Type objectType, object existingValue, JsonSerializer serializer)
            {
                return new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc)
                    .AddSeconds((long)reader.Value);
            }

            public override void WriteJson(JsonWriter writer, object value, JsonSerializer serializer)
            {
                throw new NotImplementedException();
            }

        }
    }
}

