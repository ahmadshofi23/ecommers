import 'package:ecommers/utils/constant.dart';
import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class BodyOTPScreen extends StatelessWidget {
  const BodyOTPScreen({Key? key}) : super(key: key);

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
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We sent your code to +628 23 4912 ****"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight! * 0.15),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  "Resend OTP Code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.01),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          // ignore: unnecessary_brace_in_string_interps
          builder: (context, value, child) => Text(
            "00:${value}",
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
