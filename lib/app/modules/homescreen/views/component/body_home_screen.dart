import 'package:ecommers/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'dicount_banner.dart';
import 'home_header.dart';
import 'special_offers.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const SpecialOffers(),
          ],
        ),
      ),
    );
  }
}
