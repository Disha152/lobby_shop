import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/shop/screens/homescreen/home_screen.dart';
import 'utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
   NavigationMenu({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
  final dark = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: dark? Colors.black: Colors.white,
          indicatorColor: dark? Colors.white.withOpacity(0.1): Colors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Icons.favorite), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        () => controller.screens[controller.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final List<Widget> screens = [
    Container(child: HomeScreen()),
    Container(color: Colors.blue),
    Container(color: Colors.red),
    Container(color: Colors.yellow),
  ];
}
