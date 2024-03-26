import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lobby_shop/utils/constants/sizes.dart';
import 'package:lobby_shop/utils/constants/text_string.dart';
import 'package:lobby_shop/utils/helpers/helper_functions.dart'; // Assuming this contains the isDarkMode function
import '../login/login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: EdgeInsets.only(
          top: 60.0,
          bottom: 25,
          left: 25,
          right: 25), // Use const for padding if it's static
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(dark
                    ? 'assets/logos/dark_app_logo.png'
                    : 'assets/logos/light_app_logo.png'),
                height: 150,
                width: 120,
              ),
              SizedBox(height: 10),
              Text(
                CustomTexts.signUpTitle,
                style: TextStyle(
                    color: dark ? Colors.white : Colors.black,
                    fontSize: 27,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: CustomSizes.sm),
              Text(
                CustomTexts.signUpSubTitle + ' \u{1F60A}',
                style: TextStyle(
                    color: dark ? Colors.white : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: CustomSizes.spaceBtwSections),
            child: Column(children: [
              // Form fields and buttons...
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: 'First Name',
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields),

              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: 'Last Name',
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone),
                  labelText: 'Phone',
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Password',
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'ConfirmPassword',
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields / 2),

              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  RichText(
                    text: TextSpan(
                      text: 'Agree with our ',
                      style:
                          TextStyle(color: Color.fromARGB(255, 118, 115, 115)),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.blue),
                        ),
                      
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: CustomSizes.spaceBtwItems),
              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields),
              // Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Get.to(const LoginScreen());
                  },
                  child: const Text('Already a User?'),
                ),
              ),
              const SizedBox(height: CustomSizes.spaceBtwInputFields),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('-',
                      style:
                          TextStyle(color: Color.fromARGB(255, 102, 97, 97))),
                  const Text('Or Login with',
                      style:
                          TextStyle(color: Color.fromARGB(255, 122, 122, 122))),
                  const Text('-',
                      style:
                          TextStyle(color: Color.fromARGB(255, 102, 97, 97))),
                ],
              ),
            ]),
            // Other widgets...
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/logos/facebook.png'),
                height: 30,
                width: 30,
              ),
              const SizedBox(width: CustomSizes.spaceBtwItems),

              // ),)
              Image(
                image: AssetImage('assets/logos/google.png'),
                height: 30,
                width: 30,
              ),
            ],
          ),
        ],
      ),
    )));
  }
}
