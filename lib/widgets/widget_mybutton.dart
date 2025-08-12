import 'dart:async';

import 'package:flutter/material.dart';

class OperationButton extends StatelessWidget {
  final String text;

  const OperationButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(60, 60),
        shape: CircleBorder(),
      ),
      child: Text(text, style: TextStyle(fontSize: 20)),
    );
  }
}
