import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final bool obscureText;
  final ValueChanged<String>? onChanged;

  const RoundedTextField({
    Key? key,
    required this.labelText,
    this.controller,
    this.obscureText = false,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: labelText,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 14,
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
