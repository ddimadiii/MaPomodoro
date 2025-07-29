import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  String hasil = 'Hasil....';

  void hitung(String operasi) {
    double a = double.tryParse(angka1.text) ?? 0;
    double b = double.tryParse(angka2.text) ?? 0;
    double total = 0;

    if (operasi == '+') total = a + b;
    if (operasi == '-') total = a - b;
    if (operasi == '×') total = a * b;
    if (operasi == '÷') total = b != 0 ? a / b : double.infinity;

    setState(() {
      hasil = b == 0 && operasi == '÷'
          ? 'Tidak bisa dibagi 0'
          : 'Hasil: $total';
    });
  }

  void reset() {
    angka1.clear();
    angka2.clear();
    setState(() {
      hasil = 'Hasil....';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kalkulator Sederhana')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: angka1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan angka pertama',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: angka2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan angka kedua',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            Text(hasil, style: TextStyle(fontSize: 20)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                tombolOperasi('+'),
                tombolOperasi('-'),
                tombolOperasi('×'),
                tombolOperasi('÷'),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }

  Widget tombolOperasi(String simbol) {
    return ElevatedButton(
      onPressed: () => hitung(simbol),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(60, 60),
        shape: CircleBorder(),
      ),
      child: Text(simbol, style: TextStyle(fontSize: 20)),
    );
  }
}
