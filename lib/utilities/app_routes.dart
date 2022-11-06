import 'package:flutter/material.dart';

import '../screens/first_screen/first_screen.dart';
import '../screens/home_screen/home_screen.dart';

Map<String, Widget Function(BuildContext)> appRoutes = {
  HomeScreen.routeName: (context) => const HomeScreen(),
  FirstScreen.routeName: (context) => const FirstScreen()
};
