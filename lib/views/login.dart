import 'package:demandecongeandroid/controllers/eye_password_controller.dart';
import 'package:demandecongeandroid/views/forgetPassword_mail.dart';
import 'package:demandecongeandroid/views/forgetPassword_phone.dart';
import 'package:demandecongeandroid/views/dashboard_admin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final ToggleController eyeController = Get.put(ToggleController());

    return Scaffold(

      body: Stack(
        children: [
          Image.asset(
            "assets/back.jpg",
            width: size.width,
            height: size.height,
            fit: BoxFit.cover,
          ),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/dksoft.png'),
                        radius: 25,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'DK-GCA: Gestion des congés et absences',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/logoDK.png',
                    height: size.height * 0.2,
                  ),

                  const SizedBox(height: 20),
                  Form(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.7),
                            ),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined),
                                labelText: 'Adresse Email',
                                hintText: 'E-mail',
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white.withOpacity(0.7),
                            ),

                            child: Obx(()=>TextFormField(
                              obscureText: eyeController.isPasswordHidden.value,
                              decoration:  InputDecoration(
                                prefixIcon: const Icon(Icons.fingerprint),
                                labelText: 'Mot de Passe',
                                hintText: 'Password',
                                border: const OutlineInputBorder(),
                                suffix : InkWell(
                                  child: Obx (()=>Icon( eyeController.isPasswordHidden.value
                                      ? Icons.visibility
                                      : Icons.visibility_off, ),
                                  ),
                                  onTap: () { eyeController.isPasswordHidden.value =
                                   !eyeController.isPasswordHidden.value;},

                                ),
                              ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    shape: RoundedRectangleBorder(borderRadius : BorderRadius.circular(20.0)),
                                    context: context,
                                    builder: (context) => Container(
                                      padding: const EdgeInsets.all(30.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Make a choice',style: Theme.of(context).textTheme.headline6,),
                                          Text('Choose one of email or phone number',style: Theme.of(context).textTheme.bodyText2,),
                                          const SizedBox(height: 30.0),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              Get.to(() =>  ForgetPasswordMailScreen());
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                color: Colors.grey.shade200,
                                                borderRadius: BorderRadius.circular(10.0)
                                              ),
                                              child: Row(
                                                children: [
                                                  const Icon(Icons.mail_outline_rounded,size: 40.0),
                                                  const SizedBox(width: 10.0),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('E-Mail',style: Theme.of(context).textTheme.headline6,),
                                                      Text('Reset via mail verification',style: Theme.of(context).textTheme.bodyText2,),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 20.0,),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                              Get.to(() =>  ForgetPasswordPhoneScreen());
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.all(10.0),
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade200,
                                                  borderRadius: BorderRadius.circular(10.0)
                                              ),
                                              child: Row(
                                                children: [
                                                  const Icon(Icons.mobile_friendly_rounded,size: 40.0),
                                                  const SizedBox(width: 10.0),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text('Phone N° ',style: Theme.of(context).textTheme.headline6,),
                                                      Text('Reset via phone verification',style: Theme.of(context).textTheme.bodyText2,),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                );
                              },
                              child: const Text('Mot de passe oublié ?'),
                            ),
                          ),
                          const SizedBox(height: 20.0,),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                 Get.to(() => const DashboardAdminScreen());
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  const Icon(Icons.subdirectory_arrow_right),
                                  Text('Se connecter'.toUpperCase()),
                                  const Icon(Icons.keyboard_arrow_right_rounded),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}