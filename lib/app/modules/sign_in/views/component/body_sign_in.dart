import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'no_account_text.dart';
import 'sign_form.dart';
import 'social_card.dart';

class BodySignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(50),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign in with yout email adn password \ncontinue with social media",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: getProportionateScreenWidth(30)),
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                const SignForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                        icon: "assets/icons/google-icon.svg", press: () {}),
                    SocialCard(
                        icon: "assets/icons/facebook-2.svg", press: () {}),
                    SocialCard(icon: "assets/icons/twitter.svg", press: () {}),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
