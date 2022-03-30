import 'package:ecommers/app/modules/homescreen/views/component/body_home_screen.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/homescreen_controller.dart';

class HomescreenView extends GetView<HomescreenController> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyHomeScreen(),
    );
  }
}
