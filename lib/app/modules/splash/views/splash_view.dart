import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';
import 'componetns/body.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().ini(context);
    return Scaffold(
      body: const HomeBody(),
    );
  }
}
