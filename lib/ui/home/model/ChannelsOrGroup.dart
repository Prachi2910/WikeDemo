class ChannelsOrGroup {
  String? id;
  String? name;

  ChannelsOrGroup({this.id, this.name});

  factory ChannelsOrGroup.fromJson(Map<String, dynamic> json) {
    return ChannelsOrGroup(
      id: json['id'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}
