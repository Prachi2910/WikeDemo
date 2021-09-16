import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/constant/drawable.constants.dart';
import 'package:demo/constant/misc.constants.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.menu_rounded,
          color: Colors.black,
          size: 24,
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kCardRadius),
              boxShadow: getDefaultBoxShadow(),
              image: DecorationImage(
                  image: AssetImage(icn_placeHolder), fit: BoxFit.cover)),
        )
      ],
    );
  }
}
