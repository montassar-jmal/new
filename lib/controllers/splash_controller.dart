import 'package:demandecongeandroid/views/login.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async{
    await Future.delayed(const Duration(microseconds: 120000));
    animate.value = true;
    await Future.delayed(const Duration(seconds: 10));
    Get.to(() => const LoginScreen());

  }

}