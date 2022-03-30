import 'package:ecommers/app/modules/sign_in/views/component/form_error.dart';
import 'package:ecommers/utils/constant.dart';
import 'package:ecommers/utils/default_button.dart';
import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../sign_in/views/component/custom_suffix.dart';
import '../../../sign_in/views/component/social_card.dart';
import 'sign_up_form.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(40)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.03),
              Text(
                "Register Account",
                style: headingStyle,
              ),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: getProportionateScreenWidth(30)),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
              const SignUpFrom(),
              SizedBox(height: SizeConfig.screenHeight! * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                      icon: "assets/icons/google-icon.svg", press: () {}),
                  SocialCard(icon: "assets/icons/facebook-2.svg", press: () {}),
                  SocialCard(icon: "assets/icons/twitter.svg", press: () {}),
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
              Text(
                "By continuing your confirm that you agree \nwith our Term and Conditioin",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: getProportionateScreenWidth(30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
