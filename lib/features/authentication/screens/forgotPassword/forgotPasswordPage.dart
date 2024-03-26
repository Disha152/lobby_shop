import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';


class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60.0, bottom: 25, left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
               
              SizedBox(height: 10),
              Text(
                'Forgot Password?',
                style: TextStyle(
                    color:dark? Colors.white:Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Text(
                'Do not hassle, we will help you reset your password. Please enter your email address and we will send you a link to reset your password.',
                style: TextStyle(
                    color:Colors.grey[600],
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30
              ),
               const SizedBox(height: CustomSizes.spaceBtwInputFields),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields),
             
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Submit'),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
