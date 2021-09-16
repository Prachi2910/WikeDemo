import 'package:demo/constant/colors.constants.dart';
import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/constant/misc.constants.dart';
import 'package:flutter/material.dart';

class FolderButton extends StatelessWidget {
  const FolderButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kContentPadding),
      child: TextButton(
        style: textButtonStyle().copyWith(
            backgroundColor:
                MaterialStateProperty.all(accentGreen.withOpacity(.2)),
            side: MaterialStateProperty.all(
                BorderSide(width: 1, color: accentGreen))),
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.create_new_folder,
              size: 24,
              color: accentGreen,
            ),
            HorizontalSpace(kSpaceNormal),
            Text(
              'Create New Folder',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: accentGreen),
            ),
          ],
        ),
      ),
    );
  }
}
