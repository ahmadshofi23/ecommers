import 'package:ecommers/app/routes/app_pages.dart';
import 'package:ecommers/utils/constant.dart';
import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(30)),
        ),
        GestureDetector(
          onTap: () => Get.toNamed(Routes.SIGN_UP),
          child: Text(
            "Sign Up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
