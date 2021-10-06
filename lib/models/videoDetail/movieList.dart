class movieList{
  int id;
  String img;
  String title;
  String description;
  String duration;
  movieList({
    this.id,
    this.title,
    this.img,
    this.duration,
    this.description,
  });

    movieList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    img = json['img'];
    title = json['title'];
    duration = json['duration'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['img'] = img;
    data['title'] = title;
    data['duration'] = duration;
    data['description'] = description;

    return data;
  }
}