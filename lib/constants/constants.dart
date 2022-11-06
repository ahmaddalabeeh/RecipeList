import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstantText extends StatelessWidget {
  const ConstantText({super.key, required this.text});
  final String text;

  final TextStyle _textStyle = const TextStyle(
      fontSize: 26,
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      letterSpacing: 5);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: _textStyle,
    );
  }
}
