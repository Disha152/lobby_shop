import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';



class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key, required this.image
    , required this.name, required this.brand_name, required this.price});

  final String image;
  final String name;
  final String brand_name;
  final String price;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);
    return Container(
      color: Colors.transparent,
     
     
      child: Card(
          child: Stack(
            children: [
              Positioned(
                  right: 5,
                  top: 5,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.pink,
                  )),
              Positioned(
                  top: 5,
                  left: 5,
                  child: CustomRoundedContainer(
                      backgroundColor: Colors.yellow,
                      radius: CustomSizes.xs,
                      padding: const EdgeInsets.symmetric(
                          horizontal: CustomSizes.sm, vertical: CustomSizes.xs),
                      child: Text('25%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: Colors.black)))),
              Positioned(
                  top: 5,
                  right: 10,
                  left: 10,
                  bottom:20,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Image.asset(image),
                  )),
              Positioned(
                bottom: 20,
                left: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: TextStyle(color:Colors.grey[800], fontSize: 9, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 7,
                    ),
                    Text(brand_name,
                        style: TextStyle(color:Colors.grey[600], fontSize: 6, fontWeight: FontWeight.bold)),
                    SizedBox(height: 3),
                    Text(price,
                        style: TextStyle(color:Colors.black, fontSize: 9, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
                 Positioned(
                  right: 0,
                  bottom: 0,
                  child: CustomRoundedContainer(
                      height:40,
                      width: 50,
                      backgroundColor: Colors.blue,
                      radius: CustomSizes.sm,
                      
                      child: Center(
                        child: IconButton(icon:Icon(Icons.add,color:Colors.white),onPressed: () {
                          
                        },),
                      ))),
            ],
          )),
    );
  }
}




class CustomRoundedContainer extends StatelessWidget {
  const CustomRoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = CustomSizes.cardRadiusLg,
    this.backgroundColor = Colors.white,
    this.borderColor = Colors.transparent,
  });

  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget? child;
  final bool showBorder;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder
            ? Border.all(color: borderColor, width: 1)
            : Border.all(color: Colors.transparent),
      ),
      child: child,
    );
  }
}