import 'package:flutter/material.dart';
import 'package:recipe_list/screens/splash_screen/splash_screen.dart';
import 'package:recipe_list/utilities/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe API',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blueAccent,
          primarySwatch: Colors.brown,
          textTheme:
              const TextTheme(bodyText2: TextStyle(color: Colors.white70))),
      home: const SplashScreen(),
      routes: appRoutes,
    );
  }
}
