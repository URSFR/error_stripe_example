import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controller.dart';

class RedirectScreen extends StatelessWidget {
  const RedirectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController());
    return Scaffold(
      body: Column(children: [
        ElevatedButton(onPressed: () async {
          await userController.getClientSecret();
          Get.toNamed("/home");

        }, child: const Center(child: Text("LOAD PAYMENT"))),
      ],),
    );
  }
}
