import 'package:flutter/material.dart';
import 'package:weather_app/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wheater App',
      theme: ThemeData(
        primaryColor: Colors.black45,
        brightness: Brightness.dark,
        useMaterial3: true,
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w200),
          titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          displayLarge: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w600),
          labelLarge:
              TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        ),
      ),
      home: const HomeScreenState(),
    );
  }
}
