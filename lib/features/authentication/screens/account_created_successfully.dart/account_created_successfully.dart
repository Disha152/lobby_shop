import 'package:flutter/material.dart';

import '../../../../utils/helpers/helper_functions.dart';


class AccountSuccessfullyCreated extends StatelessWidget {
  const AccountSuccessfullyCreated({super.key});

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
                image: AssetImage('assets/images/verification/email_verification.gif'),
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
                'Welcome to Your Ultimate Shopping Destination.\nYour Account is created, unleash the joy of seamless Online Shopping!',
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
            
            ],
          ),
        ),
      ),
    );
  }
}
