import 'package:ecommers/app/modules/sign_up/views/component/body_sign_up.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sign Up '),
          centerTitle: true,
        ),
        body: const BodySignUp());
  }
}
