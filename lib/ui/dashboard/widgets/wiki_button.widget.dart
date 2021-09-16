import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/constant/misc.constants.dart';
import 'package:flutter/material.dart';

class WikiButton extends StatelessWidget {
  const WikiButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kContentPadding),
      child: TextButton(
        style: textButtonStyle(),
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.add,
              size: 24,
              color: Colors.white,
            ),
            HorizontalSpace(kSpaceNormal),
            Text(
              'Create New Wiki',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
