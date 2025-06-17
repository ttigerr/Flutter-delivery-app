import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/login_form.dart';
import 'package:provider/provider.dart';
import 'core/service_locator.dart';
import 'view/home_screen.dart';
import 'viewmodels/weather_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uber Eats Clone',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('Row 1',),
        Padding(padding: EdgeInsets.all(10.0)),
        Text('Row 2'),
        Padding(padding: EdgeInsets.all(10.0)),
        Text('Row 3'),
      ],

    );
  }
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OverflowBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.map), 
            onPressed: () {  }, 
            color: Colors.blue,
          ),
          IconButton(
            icon: Icon(Icons.air_rounded), 
            onPressed: () {  },
            color: Colors.blue,
          ),
          IconButton(
            icon: Icon(Icons.home), 
            onPressed: () {  },
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => locator<WeatherViewModel>()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'Flutter MVVM Weather App',
//         theme: ThemeData(primarySwatch: Colors.blue),
//         home: const HomeScreen(),
//       ),
//     );
//   }
// }


