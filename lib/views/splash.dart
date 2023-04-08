import 'package:demandecongeandroid/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          FractionallySizedBox(
            widthFactor: 1.0,
            heightFactor: 1.0,
            child: Image.asset(
              'assets/ground.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: SpinKitFadingCircle(
                    color: Colors.deepOrangeAccent,
                    size: 50.0,
                  ),
                ),
              ),
              const Text(
                'Bienvenue sur DK-GCA....',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  color: Colors.deepOrangeAccent,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
          Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            top: splashController.animate.value ? 0 : -30,
            left: splashController.animate.value ? 0 : -30,
            child: const Image(
              image: AssetImage('assets/calanIcon.png'),
            ),
            height: 200.0,
            width: 200.0,
          )),
          Obx(() => AnimatedPositioned(
            duration: const Duration(milliseconds: 1600),
            bottom: splashController.animate.value ? 0 : -40,
            child: const Image(
              image: AssetImage('assets/men.png'),
            ),
            height: 500.0,
            width: 180,
            right: 0.0,
          )),
        ],
      ),
    );
  }
}
