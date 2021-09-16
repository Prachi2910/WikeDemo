import 'package:demo/constant/dimens.constants.dart';
import 'package:demo/ui/home/model/ChannelsOrGroup.dart';
import 'package:demo/ui/home/widgets/channel_group_container.widget.dart';
import 'package:flutter/material.dart';

class ChannelsOrGroupList extends StatelessWidget {
  const ChannelsOrGroupList({Key? key, this.channelsOrGroup = const []})
      : super(key: key);
  final List<ChannelsOrGroup>? channelsOrGroup;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: kListPadding),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          final channel = channelsOrGroup![index];
          return ChannelsGroupWidget(data: channel);
        },
        separatorBuilder: (context, index) {
          return VerticalSpace(kSpaceLittleBig);
        },
        itemCount: channelsOrGroup?.length ?? 0);
  }
}
