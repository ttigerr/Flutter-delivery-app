import 'package:flutter/material.dart';
import '../models/weather_model.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;

  const WeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Text(weather.city),
        subtitle: Text(weather.description),
        trailing: Text('${weather.temperature.toStringAsFixed(1)} °C'),
      ),
    );
  }
}
