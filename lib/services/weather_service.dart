import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService{
  final Dio dio;

  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String apiKey = 'b3244f8c4e8a49b4ab3171918231012';
    WeatherService(this.dio);
    Future <WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await Dio().get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
    }
}