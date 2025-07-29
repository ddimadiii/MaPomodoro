import 'package:flutter/material.dart';
import 'button.dart';

import 'wd_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            RoundedTextField(labelText: 'Nama'),
            RoundedTextField(labelText: 'Email'),
            RoundedTextField(labelText: 'Password'),
            MyButton(label: 'Register', onPressed: () {}),
            MyButton(label: 'Login', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
