import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:lobby_shop/features/authentication/screens/account_created_successfully.dart/account_created_successfully.dart';
import 'package:lobby_shop/features/authentication/screens/email_verification/email_verification.dart';
import 'package:lobby_shop/features/authentication/screens/forgotPassword/forgotPasswordMailSentPage.dart';
import 'package:lobby_shop/features/authentication/screens/login/login.dart';
import 'package:lobby_shop/features/authentication/screens/onboarding/onboarding.dart';
import 'package:lobby_shop/features/authentication/screens/signUp/signUp.dart';
import 'package:lobby_shop/utils/theme/theme.dart';

import 'features/authentication/screens/forgotPassword/forgotPasswordPage.dart';

void main() {

  //todo: Add widgets Binding
  //todo: Init Local Storage
  //todo: Await Native Splash
  //todo: Init Firebase
  //todo : Initialize Authentication
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
      home:ForgotPassword(),
    );
  }
}
