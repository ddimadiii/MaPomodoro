import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const WidgetButton({Key? key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: onPressed, child: Text(text)),
    );
  }
}
