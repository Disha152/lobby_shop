import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lobby_shop/utils/constants/image_strings.dart';
import 'package:lobby_shop/utils/constants/sizes.dart';
import 'package:lobby_shop/utils/constants/text_string.dart';
import 'package:lobby_shop/utils/device/device_utility.dart';
import 'package:lobby_shop/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants/colors.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        //Horizontal Scrollable Pages
        PageView(
          controller: _pageController,
          onPageChanged: (int page) {
            setState(() {});
          },
          children: const [
            OnBoarding1(
              image: CustomImages.onboarding3,
              title: CustomTexts.onBoardingTitle1,
              subTitle: CustomTexts.onBoardingSubtitle1,
            ),
            OnBoarding1(
              image: CustomImages.onboarding2,
              title: CustomTexts.onBoardingTitle2,
              subTitle: CustomTexts.onBoardingSubtitle2,
            ),
            OnBoarding1(
              image: CustomImages.onboarding1,
              title: CustomTexts.onBoardingTitle3,
              subTitle: CustomTexts.onBoardingSubtitle3,
            ),
          ],
        ),
        //skip button
        const SkipButton(),
        //Dot Navigation SmoothPageIndicator

        PageIndicator(pageController: _pageController),
        //CircularButton
        const GoToHomescreenButton(),
      ],
    ));
  }
}

class GoToHomescreenButton extends StatelessWidget {
  const GoToHomescreenButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: CustomSizes.defaultSpace,
        bottom: CustomDeviceUtils.getBottomNavigationHeight(),
        child: ElevatedButton(
          onPressed: () {
            // Get.to(LoginScreen());
          },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: Colors.blue[600]),
          child: Icon(Icons.arrow_right),
        ));
  }
}

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 20,
      right: 20,
      child: SmoothPageIndicator(
          effect: const ExpandingDotsEffect(
              activeDotColor: CustomColors.dark, dotHeight: 6),
          controller: _pageController,
          count: 3),
    );
  }
}

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      right: 20,
      child: TextButton(
          onPressed: () {
            // Get.to(LoginScreen());
          },
          child: const Text('Skip')),
    );
  }
}

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
      child: Column(
        children: [
          Image(
              width: CustomHelperFunctions.screenWidth() * 0.67,
              height: CustomHelperFunctions.screeHeight() * 0.67,
              image: AssetImage(image)),
          Text(title,
              textAlign: TextAlign.center,
              // style: CustomHelperFunctions.isDarkMode(context) ?CustomTextTheme.darkTextTheme.headlineMedium :CustomTextTheme.lightTextTheme.headlineMedium,
              // textAlign: TextAlign.center,
              style: TextStyle(
                  color: CustomHelperFunctions.isDarkMode(context)?Colors.white:Colors.grey[700] ,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  letterSpacing: 1.5)),
          const SizedBox(
            height: CustomSizes.spaceBtwItems,
          ),
          Text(subTitle,
              textAlign: TextAlign.center,
              // style:CustomHelperFunctions.isDarkMode(context) ?CustomTextTheme.darkTextTheme.bodyMedium :CustomTextTheme.lightTextTheme.bodyMedium,
              style: TextStyle(
                  color: CustomHelperFunctions.isDarkMode(context)?const Color.fromARGB(255, 153, 150, 150):Colors.grey[600] ,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Poppins',
                  letterSpacing: 1.5)),
        ],
      ),
    );
  }
}
