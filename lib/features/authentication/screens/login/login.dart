import 'package:flutter/material.dart';
import 'package:lobby_shop/utils/constants/image_strings.dart';
import 'package:lobby_shop/utils/helpers/helper_functions.dart';
import 'package:lobby_shop/utils/constants/sizes.dart';
import 'package:lobby_shop/utils/constants/text_string.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 60.0, bottom: 25, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo, Title & Sub-Title
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
                    CustomTexts.loginTitle,
                    style: TextStyle(
                        color: dark ? Colors.white : Colors.black,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: CustomSizes.sm),
                  Text(
                    CustomTexts.loginSubTitle,
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
                  child: Column(
                    children: [
                      // Email
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          labelText: 'Email',
                        ),
                      ),
                      const SizedBox(height: CustomSizes.spaceBtwInputFields),
                      // Password
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          labelText: 'Password',
                          suffixIcon: const Icon(Icons.visibility_off),
                        ),
                      ),
                      const SizedBox(
                          height: CustomSizes.spaceBtwInputFields / 2),
                      // Remember me and Forgot Password
                      Row(
                        children: [
                          // Remember me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text('Remember me',
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 118, 115, 115))),
                            ],
                          ),
                          const Spacer(),
                          // Forgot Password
                          TextButton(
                            onPressed: () {},
                            child: const Text('Forgot Password?'),
                          ),
                        ],
                      ),
                      const SizedBox(height: CustomSizes.spaceBtwItems),
                      // Sign In Button
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Sign In'),
                        ),
                      ),
                      const SizedBox(height: CustomSizes.spaceBtwInputFields),
                      // Create Account Button
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: const Text('Create Account'),
                        ),
                      ),
                      const SizedBox(height: CustomSizes.spaceBtwInputFields),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('-',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 102, 97, 97))),
                          const Text('Or Login with',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 122, 122, 122))),
                          const Text('-',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 102, 97, 97))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // Divider

              // Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/logos/facebook.png'),
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: CustomSizes.spaceBtwItems),
                  // Container(
                  //   // decoration: BoxDecoration(
                  //   //   border: Border.all(color: Colors.grey),
                  //   //   borderRadius: BorderRadius.circular(6),
                  //   // ),
                  //   width: 50,
                  //   height: 50,
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     child: Image.asset('assets/icons/facebook.png', height: 30, width: 30,)
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
        ),
      ),
    );
  }
}
