import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: <Widget>[
              const SizedBox(height: 50.0),
              Image.asset(
                "assets/forgotBack.png",
                width: 200,
                height: 200,

              ),


              const SizedBox(height: 25.0),
              Text('Trouble signing in ?',style: Theme.of(context).textTheme.headline4,),
              const SizedBox(height: 25.0),
              const Text(
                'Enter your email to reset your password:',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.mail_outline_rounded),
                  labelText: 'Email ',
                  hintText: 'Enter your mail'
                ),
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 25.0),
              ElevatedButton(

                onPressed: () {
                  String email = emailController.text;
                  // TODO: Implement password reset logic using email
                  Get.snackbar('Password Reset', 'Password reset request sent to $email',
                      snackPosition: SnackPosition.BOTTOM);
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
}
