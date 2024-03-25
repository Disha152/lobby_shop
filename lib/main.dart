import 'package:flutter/material.dart';
import 'package:lobby_shop/utils/theme/theme.dart';

void main() {

  //todo: Add widgets Binding
  //todo: Init Local Storage
  //todo: Await Native Splash
  //todo: Init Firebase
  //todo : Initialize Authentication
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: CustomAppTheme.lightTheme,
      darkTheme: CustomAppTheme.darkTheme,
    );
  }
}
