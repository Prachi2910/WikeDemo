import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/ui/home/model/RecentUser.dart';
import 'package:demo/ui/home/widgets/recent_opened_container.widget.dart';
import 'package:flutter/material.dart';

class RecentWikiList extends StatelessWidget {
  const RecentWikiList({Key? key, this.recentWikis = const []})
      : super(key: key);
  final List<RecentWikis>? recentWikis;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: kListPadding),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final recentWiki = recentWikis![index];
          return RecentOpenedWidget(recentUser: recentWiki);
        },
        separatorBuilder: (context, index) {
          return VerticalSpace(kSpaceLittleBig);
        },
        itemCount: recentWikis?.length ?? 0);
  }
}
