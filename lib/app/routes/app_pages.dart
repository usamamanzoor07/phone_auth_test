import 'package:get/get.dart';

import 'package:phone_auth_test/app/modules/home/bindings/home_binding.dart';
import 'package:phone_auth_test/app/modules/home/views/home_view.dart';
import 'package:phone_auth_test/app/modules/otp_verify/bindings/otp_verify_binding.dart';
import 'package:phone_auth_test/app/modules/otp_verify/views/otp_verify_view.dart';
import 'package:phone_auth_test/app/modules/user_phone_number/bindings/user_phone_number_binding.dart';
import 'package:phone_auth_test/app/modules/user_phone_number/views/user_phone_number_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.USER_PHONE_NUMBER;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USER_PHONE_NUMBER,
      page: () => UserPhoneNumberView(),
      binding: UserPhoneNumberBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFY,
      page: () => OtpVerifyView(),
      binding: OtpVerifyBinding(),
    ),
  ];
}
