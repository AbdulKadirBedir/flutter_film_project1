class episodesList{
  int id;
  String EPISODES;
  String TRAILERSMORE;
  String MORELIKETHIS;
  episodesList({
    this.id,
    this.EPISODES,
    this.MORELIKETHIS,
    this.TRAILERSMORE,
  });

    episodesList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    EPISODES = json['EPISODES'];
    TRAILERSMORE = json['TRAILERSMORE'];
    TRAILERSMORE = json['TRAILERSMORE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['EPISODES'] = EPISODES;
    data['TRAILERSMORE'] = TRAILERSMORE;
    data['TRAILERSMORE'] = TRAILERSMORE;

    return data;
  }
}