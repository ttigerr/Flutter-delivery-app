import 'package:get_it/get_it.dart';
import '../services/api_service.dart';
import '../viewmodels/weather_viewmodel.dart';

final locator = GetIt.instance;

void setUpLocator() {
  locator.registerLazySingleton<ApiService>(() => ApiService());
  locator.registerFactory(() => WeatherViewModel(locator<ApiService>()));
}