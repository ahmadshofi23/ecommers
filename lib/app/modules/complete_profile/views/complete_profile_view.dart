import 'package:ecommers/app/modules/complete_profile/views/component/body_complete_profile.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../utils/constant.dart';
import '../controllers/complete_profile_controller.dart';

class CompleteProfileView extends GetView<CompleteProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Sign Up',
            style: TextStyle(color: kSecondaryColor),
          ),
          centerTitle: true,
        ),
        body: const BodyCompleteProfile());
  }
}
