import 'package:ecommers/app/modules/forgot_passowrd/views/component/body_forgot.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forgot_passowrd_controller.dart';

class ForgotPassowrdView extends GetView<ForgotPassowrdController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
          style: TextStyle(
            color: Color(0xff888888),
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: BodyForgotPassword(),
    );
  }
}
