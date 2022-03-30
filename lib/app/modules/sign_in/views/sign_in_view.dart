import 'package:ecommers/app/modules/sign_in/views/component/body_sign_in.dart';
import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign in',
          style: TextStyle(
            color: Color(0xff888888),
            fontSize: getProportionateScreenWidth(45),
          ),
        ),
        centerTitle: true,
      ),
      body: BodySignIn(),
    );
  }
}
