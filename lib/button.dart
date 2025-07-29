// my_button.dart
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color color;

  const MyButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.all(3),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
        child: Text(label, style: TextStyle(fontSize: 16, color: Colors.white)),
      ),
    );
  }
}
