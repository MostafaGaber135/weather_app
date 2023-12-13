import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService{
  final String apiKey = 'b3244f8c4e8a49b4ab3171918231012';
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final Dio dio;

    WeatherService(this.dio);

    Future <WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
  Response response = await Dio().get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
  WeatherModel weatherModel = WeatherModel.fromJson(response.data);
  return weatherModel;
} on DioException catch (e) {
  final String errMessage = e.response?.data['error']['message'] ?? 'Oops there was an error, try later' ;
  throw Exception(errMessage);
      } catch(e) {
        log(e.toString());
        throw Exception('Oops there was an error, try later');
      }
    }
}