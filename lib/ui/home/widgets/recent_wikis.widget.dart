import 'package:demo/constant/colors.constants.dart';
import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/constant/drawable.constants.dart';
import 'package:demo/constant/misc.constants.dart';
import 'package:demo/ui/home/model/RecentUser.dart';
import 'package:demo/ui/home/model/WikiModel.dart';
import 'package:demo/ui/home/viewmodel/home.viewmodel.dart';
import 'package:demo/ui/home/widgets/channel_group_container.widget.dart';
import 'package:demo/ui/home/widgets/channel_group_list.widget.dart';
import 'package:demo/ui/home/widgets/recent_opened_container.widget.dart';
import 'package:demo/ui/home/widgets/recent_wiki_list.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentWikisWidget extends StatelessWidget {
  const RecentWikisWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeViewModel>();
    return FutureBuilder<WikiModel>(
        future: homeProvider.getWikisData(),
        builder: (context, snapshot) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Recently Opened Wikis",
                style: TextStyle(
                    fontSize: 14,
                    color: deepOrange,
                    fontWeight: FontWeight.w400),
              ),
              RecentWikiList(
                recentWikis: snapshot.data?.recentWikis,
              ),
              VerticalSpace(kSpaceBig),
              Row(
                children: [
                  Text(
                    "Channels/Group",
                    style: TextStyle(
                        fontSize: 14,
                        color: deepOrange,
                        fontWeight: FontWeight.w400),
                  ),
                  HorizontalSpace(kSpaceNormal),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kCardRadius),
                        color: accentGreen.withOpacity(.2)),
                    child: Icon(
                      Icons.add,
                      size: 16,
                      color: accentGreen,
                    ),
                  )
                ],
              ),
              ChannelsOrGroupList(
                channelsOrGroup: snapshot.data?.channelsOrGroup,
              )
            ],
          );
        });
  }
}
