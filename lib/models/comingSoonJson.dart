class ComingSoonJson{
  int id;
  String img;
  String title_img;
  String title;
  String description;
  String type;
  String date;
  bool duration;
  ComingSoonJson({
    this.id,
    this.img,
    this.title_img,
    this.title,
    this.description,
    this.type,
    this.date,
    this.duration
  });

    ComingSoonJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img = json['img'];
    title_img = json['title_img'];
    title = json['title'];
    description = json['description'];
    type = json['type'];
    date = json['date'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['img'] = img;
    data['title_img'] = title_img;
    data['title'] = title;
    data['description'] = description;
    data['type'] = type;
    data['date'] = date;
    data['duration'] = duration;

    return data;
  }
}