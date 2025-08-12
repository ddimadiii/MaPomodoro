import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:pomodoro/login_page.dart';
import 'package:flutter/services.dart';
// import 'package:pomodoro/pages/calculator_page.dart';
import 'package:pomodoro/routes/pages.dart';
import 'package:pomodoro/routes/routes.dart';
// import 'package:pomodoro/register_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive); // Fullscreen
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaPomodoro',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.calculator,
      getPages: AppPages.pages,
    );
  }
}
