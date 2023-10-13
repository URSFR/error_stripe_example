// ignore_for_file: file_names, library_prefixes

import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/variables.dart';


class UserController extends GetxController {
  static UserController get instance => Get.find();

  String? clientSecret;

  Future<void> getClientSecret() async {
    try {
      final client = await createPaymentIntent();
      clientSecret = client["client_secret"];
    } catch (e) {
        print(e);
    }
  }

  createPaymentIntent() async {

    try{
      Map<String, dynamic> body = {
        'amount': "10000",
        'currency': "usd",
        'automatic_payment_methods[enabled]': "true",
        "setup_future_usage": "off_session",
      };

      http.Response response = await http.post(Uri.parse("https://api.stripe.com/v1/payment_intents"),
          body: body,
          headers: {
            "Authorization": "Bearer $secretKey",
            // 'Content-Type': 'application/json',
          });
      return json.decode(response.body);

    }catch(e){
      throw Exception(e.toString());
    }

  }
}