import 'package:flutter/material.dart';
import 'package:demandecongeandroid/views/otp.dart';
import 'package:get/get.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
   ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

   final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 50.0),
            Image.asset(
              "assets/reset.png",
              width: 200,
              height: 200,

            ),
            const SizedBox(height: 25.0),
            Text('Trouble signing in ?',style: Theme.of(context).textTheme.headline4,),
            const SizedBox(height: 25.0),
            const Text(
              'Enter your phone number to reset your password:',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone N° ',
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: () {
                String phone = phoneController.text;
                // TODO: Implement password reset logic using email
                showOtpSnackbar(context, phone);
              },
              child: const Text('Send'),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                Get.back(); // Navigate back to previous screen
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),

    );

  }
   void showOtpSnackbar(BuildContext context, String phone) {
     Get.snackbar(
       'Password Reset',
       'Password reset request sent to $phone',
       snackPosition: SnackPosition.BOTTOM,
       duration: const Duration(seconds: 5),
       messageText: Column(
         children: [
           FlutterOtpTextField(
             length: 4,
             width: MediaQuery.of(context).size.width,
             textFieldAlignment: MainAxisAlignment.center,
             keyboardType: TextInputType.number,
             borderColor: Theme.of(context).primaryColor,
             filledColor: Theme.of(context).primaryColor.withOpacity(0.1),
             otpFieldStyle: const TextStyle(fontSize: 17.0),
           ),
           const SizedBox(height: 16.0),
           TextButton(
             onPressed: () {
               Get.back(); // dismiss current snackbar
               Get.snackbar(
                 'Message Sent',
                 'Your message has been sent.',
                 snackPosition: SnackPosition.BOTTOM,
                 duration: const Duration(seconds: 2),
               );
             },
             child: const Text('Send'),
           ),
         ],
       ),
     );
   }
}
