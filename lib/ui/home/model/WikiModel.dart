import 'package:demo/ui/home/model/ChannelsOrGroup.dart';
import 'package:demo/ui/home/model/RecentUser.dart';


class WikiModel {
  List<ChannelsOrGroup>? channelsOrGroup;
  List<RecentWikis>? recentWikis;

  WikiModel({this.channelsOrGroup, this.recentWikis});

  factory WikiModel.fromJson(Map<String, dynamic> json) {
    return WikiModel(
      channelsOrGroup: json['channelsOrGroup'] != null
          ? (json['channelsOrGroup'] as List)
              .map((i) => ChannelsOrGroup.fromJson(i))
              .toList()
          : null,
      recentWikis: json['recentWikis'] != null
          ? (json['recentWikis'] as List)
              .map((i) => RecentWikis.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.channelsOrGroup != null) {
      data['channelsOrGroup'] =
          this.channelsOrGroup?.map((v) => v.toJson()).toList();
    }
    if (this.recentWikis != null) {
      data['recentUsers'] = this.recentWikis?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
