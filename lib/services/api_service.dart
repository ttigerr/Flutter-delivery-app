// This file is to fetch the data
import 'package:dio/dio.dart';
import '../models/weather_model.dart';

class ApiService {
  final Dio dio = Dio();
  Future<Weather> fetchWeather(String city) async {
    final response = await dio.get('https://api.openweathermap.org/data/2.5/weather', queryParameters: {
      'q' : city,
      'appid': 'YOUR_API_KEY',
      'units' : 'metric',
    });
    return Weather.fromJson(response.data);
  }
}