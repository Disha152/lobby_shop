import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';


class ForgotPasswordMailSentPage extends StatelessWidget {
  const ForgotPasswordMailSentPage({super.key});

  @override
  Widget build(BuildContext context) {
   final dark = CustomHelperFunctions.isDarkMode(context);
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60.0, bottom: 25, left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/verification/forgot_password.gif'),
                height: 250,
                width: 250,
              ),
              SizedBox(height: 10),
              Text(
                'Password Reset Email Sent',
                style: TextStyle(
                    color:dark? Colors.white:Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Your Accout Security is Our Priority \nWe have sent you an email to reset your password. Please check your email and follow the instructions to reset your password.',
                style: TextStyle(
                    color:Colors.grey[600],
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Continue'),
                ),
              ),
               TextButton(
          onPressed: () {
            // Get.to(const LoginScreen());
          },
          child: const Text('Resend Email',style:TextStyle(color: Colors.blue))),
            ],
          ),
        ),
      ),
    );
  }
}
