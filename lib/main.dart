import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:untitled/redirectscreen.dart';
import 'package:untitled/variables.dart';

import 'home.dart';

void main() {

  Stripe.publishableKey = publishableKey;

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>const RedirectScreen()),
        GetPage(name: "/home", page: ()=>const HomeScreen()),
      ],
      home: RedirectScreen(),
    );
  }
}