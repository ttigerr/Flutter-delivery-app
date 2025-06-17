// Handle the logic and 
import 'package:flutter/material.dart';
import '../models/weather_model.dart';
import '../services/api_service.dart';

class WeatherViewModel extends ChangeNotifier {
  final ApiService _apiService;

  WeatherViewModel(this._apiService);

  Weather? _weather;
  bool _isLoading = false;
  String? _error;

  Weather? get weather => _weather;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> getWeather(String city) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _weather = await _apiService.fetchWeather(city);
    } catch (e) {
      _error = 'Failed to load weather';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
