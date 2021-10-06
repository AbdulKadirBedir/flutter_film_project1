class likesList{
  int id;
  String icon;
  likesList({
    this.id,
    this.icon,
  });
    likesList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['icon'] = icon;

    return data;
  }
}