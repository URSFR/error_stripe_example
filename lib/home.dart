import 'package:flutter/material.dart';
import 'package:flutter_stripe_web/flutter_stripe_web.dart';
import 'package:get/get.dart';
import 'package:untitled/controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.sizeOf(context);
    return GetBuilder<UserController>(builder: (controller)=>
        SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 35,right: 35),
            child: Column(
              children: [
                SizedBox(height: size.height/3.5,),
                PaymentElement(
                  layout: PaymentElementLayout.tabs,
                  autofocus: true,
                  enablePostalCode: true,
                  onCardChanged: (value) {},
                  clientSecret: controller.clientSecret!,
                ),
                SizedBox(height: size.height/3.5,),

              ],
            ),
        ),
    ));
  }

}
