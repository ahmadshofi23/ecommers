import 'package:ecommers/utils/constant.dart';
import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'complete_profile_form.dart';

class BodyCompleteProfile extends StatelessWidget {
  const BodyCompleteProfile({Key? key}) : super(key: key);

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
              SizedBox(height: SizeConfig.screenHeight! * 0.02),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              const Text(
                "Complete yout details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.05),
              const CompleteProfileForms(),
              SizedBox(height: getProportionateScreenHeight(30)),
              const Text(
                "By Continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.01),
            ],
          ),
        ),
      ),
    );
  }
}
