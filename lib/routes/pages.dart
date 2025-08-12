import 'package:flutter/cupertino.dart';
import 'package:get/route_manager.dart';
import 'package:pomodoro/pages/calculator_page.dart';
import 'package:pomodoro/pages/football_page.dart';
import 'package:pomodoro/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage(),),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPage(),)
  ];
}
