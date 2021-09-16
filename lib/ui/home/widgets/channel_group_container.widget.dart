import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/constant/drawable.constants.dart';
import 'package:demo/constant/misc.constants.dart';
import 'package:demo/ui/home/model/ChannelsOrGroup.dart';
import 'package:demo/ui/home/model/FolderModel.dart';
import 'package:demo/ui/home/model/RecentUser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChannelsGroupWidget extends StatelessWidget {
  const ChannelsGroupWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  final ChannelsOrGroup data;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.circle_outlined,
          size: 12,
          color: Colors.grey,
        ),
        HorizontalSpace(kSpaceBig),
        Text(
          data.name ?? "",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        Spacer(),
        SvgPicture.asset(
          icn_dot_menu,
          color: Colors.grey,
          height: 20,
          width: 15,
        )
      ],
    );
  }
}
