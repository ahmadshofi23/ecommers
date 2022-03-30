import 'package:get/get.dart';

import '../controllers/forgot_passowrd_controller.dart';

class ForgotPassowrdBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotPassowrdController>(
      () => ForgotPassowrdController(),
    );
  }
}
