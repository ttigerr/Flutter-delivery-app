import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/weather_viewmodel.dart';
import '../widgets/weather_card.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final viewModel = Provider.of<WeatherViewModel>(context);

//     return Scaffold(
//       appBar: AppBar(title: const Text('Home Page')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               onSubmitted: (city) => viewModel.getWeather(city),
//               decoration: const InputDecoration(labelText: 'Enter city'),
//             ),
//             const SizedBox(height: 20),
//             if (viewModel.isLoading)
//               const CircularProgressIndicator()
//             else if (viewModel.error != null)
//               Text(viewModel.error!, style: const TextStyle(color: Colors.red))
//             else if (viewModel.weather != null)
//               WeatherCard(weather: viewModel.weather!)
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Hello this is homepage"),
      )
    );
  }
}
