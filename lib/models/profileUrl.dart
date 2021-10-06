class profile{
  int id;
  String profileUrl;
profile({
  this.id,
  this.profileUrl,
});

  profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profileUrl = json['profileUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['profileUrl'] = profileUrl;
    return data;
  }
}