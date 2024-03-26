import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';

class EmailVerification extends StatelessWidget {
  const EmailVerification({super.key});

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
                image: AssetImage('assets/images/verification/account_created_successfully.png'),
                height: 250,
                width: 250,
              ),
              SizedBox(height: 10),
              Text(
                'Verify Your Email Address',
                style: TextStyle(
                    color:dark? Colors.white:Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Congratulations! Your account has been created successfully. Please verify your email address to continue.',
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
