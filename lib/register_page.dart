import 'package:flutter/material.dart';
import 'button.dart';
import 'wd_textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? selectedGender;
  String selectedDate = 'Belum dipilih';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RoundedTextField(labelText: 'Nama'),
            RoundedTextField(labelText: 'Email'),
            RoundedTextField(labelText: 'Password'),

            SizedBox(height: 16),
            Text('Jenis Kelamin'),
            DropdownButton<String>(
              value: selectedGender,
              hint: Text('Pilih Jenis Kelamin'),
              isExpanded: true,
              items: ['Laki-laki', 'Perempuan'].map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedGender = value;
                });
              },
            ),

            SizedBox(height: 16),
            Text('Tanggal Lahir'),
            Text(selectedDate),
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: DateTime(2000),
                  firstDate: DateTime(1950),
                  lastDate: DateTime.now(),
                ).then((pickedDate) {
                  if (pickedDate != null) {
                    setState(() {
                      selectedDate =
                          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                    });
                  }
                });
              },
              child: Text('Pilih Tanggal'),
            ),

            SizedBox(height: 20),
            MyButton(label: 'Register', onPressed: _onRegister),
            MyButton(label: 'Login', onPressed: () {}),
          ],
        ),
      ),
    );
  }

  void _onRegister() {
    
  }
}
