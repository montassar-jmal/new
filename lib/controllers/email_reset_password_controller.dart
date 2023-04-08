import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {

  RxString email = ''.obs;

  void updateEmail(String value) {
    email.value = value;
  }

  void submitForgotPassword() {
    String userEmail = email.value;
    // TODO: Implement password reset logic using userEmail
    Get.snackbar('Password Reset', 'Password reset request sent to $userEmail',
        snackPosition: SnackPosition.BOTTOM);
  }
}
