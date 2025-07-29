import 'package:flutter/material.dart';
import 'package:pomodoro/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _txtUsn = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MaPomodoro')),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boost your Activity With Us!',
              style: TextStyle(fontSize: 18),
            ),
            Center(
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset("assets/images/login.png"),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                controller: _txtUsn,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'Username',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                width: 250,
                height: 50,
                child: OutlinedButton(
                  onPressed: _loginAuth,
                  child: Text('Login'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loginAuth() {
    if (_txtUsn.text == 'admin') {
      // Tampilkan SnackBar sukses
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.lightGreenAccent,
          content: Text('Success!'),
          duration: Duration(seconds: 1), // SnackBar akan tampil selama 3 detik
        ),
      );

      // Delay navigasi selama 3 detik (sesuai durasi SnackBar)
      Future.delayed(Duration(seconds: 1), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(backgroundColor: Colors.red, content: Text('Failure!')),
      );
    }
  }
}
