import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../utils/constant.dart';
import '../../../../../utils/size_config.dart';

class iconButtonWithCounter extends StatelessWidget {
  const iconButtonWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfitems = 0,
    required this.press,
  }) : super(key: key);
  final String svgSrc;
  final int numOfitems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(24)),
            height: getProportionateScreenWidth(95),
            width: getProportionateScreenWidth(95),
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(svgSrc),
          ),
          if (numOfitems != 0)
            Positioned(
              right: 0,
              top: -1,
              child: Container(
                height: getProportionateScreenWidth(35),
                width: getProportionateScreenWidth(35),
                decoration: BoxDecoration(
                  color: const Color(0xFFFF4848),
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Center(
                  child: Text(
                    "$numOfitems",
                    style: TextStyle(
                        height: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: getProportionateScreenWidth(20)),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
