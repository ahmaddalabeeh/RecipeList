import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../widgets/recipe_list.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/homeScreen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.restaurant_menu_rounded),
              ConstantText(text: " Recipe List")
            ],
          ),
        ),
        body: const RecipeList());
  }
}
