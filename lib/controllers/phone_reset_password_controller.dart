import 'package:get/get.dart';

class PhoneForgotPasswordController extends GetxController {

  RxString phone = ''.obs;

  void updatePhone(String value) {
    phone.value = value;
  }

  void submitForgotPassword() {
    String userPhone = phone.value;
    // TODO: Implement password reset logic using userPhone
    Get.snackbar('Password Reset', 'Password reset request sent to $userPhone',
        snackPosition: SnackPosition.BOTTOM);
  }
}
