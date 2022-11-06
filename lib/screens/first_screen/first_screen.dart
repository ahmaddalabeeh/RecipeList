import 'package:flutter/material.dart';
import 'package:recipe_list/constants/constants.dart';

import '../home_screen/home_screen.dart';

class FirstScreen extends StatelessWidget {
  static const routeName = '/firstScreen';
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const ConstantText(text: "RecipeApp"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/recipe.png",
              scale: 3,
              color: Colors.brown,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            const Text(
              "Welcome to my Recipe Application ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20))))),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                },
                child: const Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    "Show Recipe List",
                    style: TextStyle(fontSize: 20, letterSpacing: 6),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
