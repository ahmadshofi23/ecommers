import 'package:ecommers/app/routes/app_pages.dart';
import 'package:ecommers/utils/default_button.dart';
import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyLoginSuccess extends StatelessWidget {
  const BodyLoginSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight! * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight! * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight! * 0.08),
        Text(
          "Login Success",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(40),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth! * 0.6,
          child: DefaultButton(
              text: "Back to Home",
              press: () => Get.toNamed(Routes.HOMESCREEN)),
        ),
        Spacer(),
      ],
    );
  }
}
