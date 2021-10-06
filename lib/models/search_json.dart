class searchJson{
  int id;
  String title;
  String img;
  String video;
  searchJson({
    this.id,
    this.img,
    this.title,
    this.video,
  });

    searchJson.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    img = json['img'];
    video = json['video'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['img'] = img;
    data['video'] = video;

    return data;
  }
}