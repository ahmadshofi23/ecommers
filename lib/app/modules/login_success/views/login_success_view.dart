import 'package:ecommers/app/modules/login_success/views/component/body_login_succes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_success_controller.dart';

class LoginSuccessView extends GetView<LoginSuccessController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          'Login Success',
          style: TextStyle(
            color: Color(0xff888888),
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: BodyLoginSuccess(),
    );
  }
}
