class items{
  int id;
  String icon;
  items({
    this.id,
    this.icon,
  });

    items.fromJson(Map<String, dynamic> json) {
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