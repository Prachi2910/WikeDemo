import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/ui/home/viewmodel/home.viewmodel.dart';
import 'package:demo/ui/home/widgets/folder_container.widget.dart';
import 'package:demo/ui/home/widgets/recent_wikis.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WikiListWidget extends StatelessWidget {
  const WikiListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeProvider = context.watch<HomeViewModel>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Wiki Lists",
          style: TextStyle(
              fontSize: 34, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        VerticalSpace(kSpaceNormal),
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(vertical: kListPadding),
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 1,
              crossAxisSpacing: kCardPadding,
              mainAxisSpacing: kCardPadding),
          itemCount: homeProvider.folders.length,
          itemBuilder: (context, index) {
            return FolderContainerWidget(model: homeProvider.folders[index]);
          },
        ),
        VerticalSpace(kSpaceBig),
        RecentWikisWidget(),
        VerticalSpace(55),
      ],
    );
  }
}
