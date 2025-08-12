import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pomodoro/controllers/football_controller.dart';
import 'package:pomodoro/routes/routes.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});

  final footballController = Get.put(FootballController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BadAss Team 😙")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: footballController.players.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Get.snackbar("Bubub", "pagii sayangggg");
                  // route ke edit page
                },
                title: Text(footballController.players[index]),
              );
            },
          ),
        ),
      ),
    );
  }
}
