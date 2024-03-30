import 'package:flutter/material.dart';
import 'package:lobby_shop/common/widgets/curved_edges.dart';
import 'package:lobby_shop/utils/constants/colors.dart';
import 'package:lobby_shop/utils/constants/image_strings.dart';
import 'package:lobby_shop/utils/constants/sizes.dart';
import 'package:lobby_shop/utils/device/device_utility.dart';
import 'package:lobby_shop/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/circular_container.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<CategoriesCard> categories = [
    CategoriesCard(
        image: 'https://img.icons8.com/?size=50&id=22182&format=png',
        title: 'Jewellery',
        onTap: () {}),
    CategoriesCard(
        image: 'https://img.icons8.com/?size=50&id=9817&format=png',
        title: 'Sports',
        onTap: () {}),
    CategoriesCard(
        image: 'https://img.icons8.com/?size=50&id=8576&format=png',
        title: 'Electronics',
        onTap: () {}),
    CategoriesCard(
        image: 'https://img.icons8.com/?size=50&id=26114&format=png',
        title: 'Furniture',
        onTap: () {}),
    CategoriesCard(
        image: 'https://img.icons8.com/?size=50&id=LqI9f10FbH3b&format=png',
        title: 'Shoes',
        onTap: () {}),
    CategoriesCard(
        image: 'https://img.icons8.com/?size=50&id=35700&format=png',
        title: 'Clothes',
        onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              CustomCurvedWidget(), // Assuming this widget is correctly implemented
              Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      'Explore the world of fashion',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .apply(color: Colors.white),
                    ),
                    actions: [
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.shopping_bag,
                              color: Colors.white,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.50),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: Text(
                                  '2',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .apply(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomSearchBar(),
                  SizedBox(
                    height: CustomSizes.spaceBtwSections,
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: CustomSizes.defaultSpace),
                      child: Column(children: [
                        //Heading
                        CustomSectionHeading(
                            title: 'Popular Categories',
                            showActionButton: false),

                        const SizedBox(
                          height: 20,
                        ),
                        //Categories
                        SizedBox(
                            height: 80,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: categories.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                      padding: EdgeInsets.only(right: 8),
                                      child: categories[index]);
                                }))
                      ]))
                ],
              )
            ]),
          ],
        ),
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.image,
    required this.title,
    required this.onTap,
  });

  final String image;

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(children: [
        Container(
            width: 56,
            height: 56,
            padding: EdgeInsets.all(CustomSizes.sm),
            decoration: BoxDecoration(
              color: CustomHelperFunctions.isDarkMode(context)
                  ? Colors.black
                  : Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(7.0),
                child: Image(
                    image: NetworkImage(image),
                    fit: BoxFit.cover,
                    color: CustomColors.dark),
              ),
            )),
        const SizedBox(height: CustomSizes.spaceBtwItems / 2),
        Text(title,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.white))
      ]),
    );
  }
}

class CustomSectionHeading extends StatelessWidget {
  final Color? textColor;
  final String title;
  final bool showActionButton;
  final String buttonTitle;
  final VoidCallback? onPressed;

  const CustomSectionHeading(
      {super.key,
      this.onPressed,
      this.textColor,
      this.buttonTitle = 'View all',
      required this.title,
      this.showActionButton = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 29.0),
      child: Row(
        children: [
          Text(
            'Popular Categories',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Spacer(),
          Text(
            'View all',
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: Colors.white,
                ),
          )
        ],
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25.0,
        top: 4.0,
      ),
      child: TextField(
        autocorrect: true,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
          hintText: 'Search for products',
          hintStyle: Theme.of(context)
              .textTheme
              .labelMedium!
              .apply(color: Colors.grey[600]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          contentPadding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}

class CustomCurvedWidget extends StatelessWidget {
  const CustomCurvedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCurvedEdgeWidget(child: CustomPrimaryHeaderContainer());
  }
}

class CustomPrimaryHeaderContainer extends StatelessWidget {
  const CustomPrimaryHeaderContainer({
    super.key,
  });

  // final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: CustomColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
            height: 400,
            child: Stack(children: [
              Positioned(
                  top: -150,
                  right: -250,
                  child: CustomCircularContainer(
                    backgroundcolor: Colors.white.withOpacity(0.1),
                  )),
              Positioned(
                  top: 100,
                  left: -300,
                  child: CustomCircularContainer(
                    backgroundcolor: Colors.white.withOpacity(0.1),
                  )),
            ])));
  }
}

class CustomCurvedEdgeWidget extends StatelessWidget {
  const CustomCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        title: title,
        actions: actions,
        leading: BackButton(color: Colors.white));
    // automaticallyImplyLeading: false,
  }

  @override
  //Todo : implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(CustomDeviceUtils.getAppBarHeight());
}
