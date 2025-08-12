import 'package:flutter/material.dart';
import 'package:pomodoro/controllers/calculator_controller.dart';
import 'package:pomodoro/routes/routes.dart';
import 'package:pomodoro/wd_textfield.dart';
import 'package:get/get.dart';
import 'package:pomodoro/widgets/widget_button.dart';
import 'package:pomodoro/widgets/widget_mybutton.dart';
import 'package:pomodoro/widgets/widget_textfield.dart';

class CalculatorPage extends StatefulWidget {
  CalculatorPage({super.key});

  final CalculatorController calculatorController = Get.put(
    CalculatorController(),
  );
  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            MyTextField(
              textEditingController: TextEditingController(),
              labelText: 'angka pertama',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperationButton(text: '+'),
                OperationButton(text: '-'),
                OperationButton(text: ':'),
                OperationButton(text: 'x'),
              ],
            ),
            Text('Hasil...'),
            WidgetButton(
              text: 'Go To Player List',
              onPressed: () {
                Get.toNamed(AppRoutes.footballplayers);
              },
            ),
          ],
        ),
      ),
    );
  }
}
