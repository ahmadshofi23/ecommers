import 'package:ecommers/app/modules/sign_in/views/component/custom_suffix.dart';
import 'package:ecommers/app/modules/sign_in/views/component/form_error.dart';
import 'package:ecommers/app/modules/sign_in/views/component/no_account_text.dart';
import 'package:ecommers/utils/constant.dart';
import 'package:ecommers/utils/default_button.dart';
import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'forgot_password_form.dart';

class BodyForgotPassword extends StatelessWidget {
  const BodyForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Forgot Passowrd",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(40),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: getProportionateScreenWidth(30)),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}
