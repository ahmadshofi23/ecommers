import 'package:ecommers/utils/constant.dart';
import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';

class splashContent extends StatelessWidget {
  const splashContent({Key? key, required this.image, required this.text})
      : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TOKOTO",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(70),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: getProportionateScreenWidth(35)),
          textAlign: TextAlign.center,
        ),
        const Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(400),
        )
      ],
    );
  }
}
