import 'package:demo/constant/dimens.constants.dart';
import 'package:flutter/material.dart';

class TabContainer extends StatelessWidget {
  const TabContainer(
      {Key? key,
      required this.icon,
      required this.iconColor,
      required this.containerColor,
      this.callback,
      this.shadow})
      : super(key: key);
  final IconData icon;
  final Color iconColor;
  final Color containerColor;
  final VoidCallback? callback;
  final List<BoxShadow>? shadow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
          padding: EdgeInsets.all(kInternalPadding),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kCardRadius),
              boxShadow: shadow ?? [],
              color: containerColor),
          child: Icon(
            icon,
            color: iconColor,
            size: 24,
          )),
    );
  }
}
