import 'package:get/get.dart';

import '../controllers/user_phone_number_controller.dart';

class UserPhoneNumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserPhoneNumberController>(
      () => UserPhoneNumberController(),
    );
  }
}
