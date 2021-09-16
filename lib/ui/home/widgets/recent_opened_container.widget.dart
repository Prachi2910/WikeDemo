import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/constant/drawable.constants.dart';
import 'package:demo/constant/misc.constants.dart';
import 'package:demo/ui/home/model/FolderModel.dart';
import 'package:demo/ui/home/model/RecentUser.dart';
import 'package:flutter/material.dart';

class RecentOpenedWidget extends StatelessWidget {
  const RecentOpenedWidget({
    Key? key,
    required this.recentUser,
  }) : super(key: key);

  final RecentWikis recentUser;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kCardRadius),
              boxShadow: getDefaultBoxShadow(),
              image: setImage(recentUser.image)),
        ),
        HorizontalSpace(kSpaceBig),
        SizedBox(
          width: 160,
          child: Text(
            recentUser.name ?? "",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

  DecorationImage setImage(String? image) {
    if (image != null && image != "") {
      return DecorationImage(image: NetworkImage(image), fit: BoxFit.cover);
    } else {
      return DecorationImage(
          image: AssetImage(icn_placeHolder), fit: BoxFit.cover);
    }
  }
}
