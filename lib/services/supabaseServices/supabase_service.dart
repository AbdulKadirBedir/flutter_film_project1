
import 'package:flutter_film_project1/models/comingSoonJson.dart';
import 'package:flutter_film_project1/models/homeJson/animaList.dart';
import 'package:flutter_film_project1/models/homeJson/myList.dart';
import 'package:flutter_film_project1/models/homeJson/originalList.dart';
import 'package:flutter_film_project1/models/homeJson/popularList.dart';
import 'package:flutter_film_project1/models/homeJson/tendingList.dart';
import 'package:flutter_film_project1/services/credentials/supabase_credentials.dart';
import 'package:supabase/supabase.dart';

class SupabaseServices {
  final supabase = SupabaseClient(SupabaseCredentials.APIURL, SupabaseCredentials.APIKEY);
 

   Future<List<AnimeList>> getAnimeList() async {
    final response = await supabase.from("AnimeList").select().execute();

    if (response.status == 200) {
      var animelList = <AnimeList>[];
      for (var element in (response.data as List)) {
        AnimeList anime = AnimeList.fromJson(element);
        animelList.add(anime);
      }
      return animelList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

     Future<List<Mylist>> getMyList() async {
    final response = await supabase.from("MyList").select().execute();

    if (response.status == 200) {
      var myList = <Mylist>[];
      for (var element in (response.data as List)) {
        Mylist mylist = Mylist.fromJson(element);
        myList.add(mylist);
      }
      return myList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

    Future<List<OriginalList>> getOriginalList() async {
    final response = await supabase.from("OriginalList").select().execute();

    if (response.status == 200) {
      var originalList = <OriginalList>[];
      for (var element in (response.data as List)) {
        OriginalList original = OriginalList.fromJson(element);
        originalList.add(original);
      }
      return originalList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }
  Future<List<TrendingList>> getTrendingList() async {
    final response = await supabase.from("TrendingList").select().execute();

    if (response.status == 200) {
      var trendinglList = <TrendingList>[];
      for (var element in (response.data as List)) {
        TrendingList trending = TrendingList.fromJson(element);
        trendinglList.add(trending);
      }
      return trendinglList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

    Future<List<PopularList>> getPopularList() async {
    final response = await supabase.from("PopularList").select().execute();

    if (response.status == 200) {
      var popularList = <PopularList>[];
      for (var element in (response.data as List)) {
        PopularList popular = PopularList.fromJson(element);
        popularList.add(popular);
      }
      return popularList;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
    
  }Future<List<ComingSoonJson>> getComingSoonJson() async {
    final response = await supabase.from("ComingSoonJson").select().execute();

    if (response.status == 200) {
      var comingSoonJson = <ComingSoonJson>[];
      for (var element in (response.data as List)) {
        ComingSoonJson comingSoon = ComingSoonJson.fromJson(element);
        comingSoonJson.add(comingSoon);
      }
      return comingSoonJson ;
    } else {
      throw Exception("Supabase getting data error:${response.error}");
    }
  }

  
}

    