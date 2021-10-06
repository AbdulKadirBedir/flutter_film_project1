import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_film_project1/json/home_json.dart';
import 'package:flutter_film_project1/models/homeJson/animaList.dart';
import 'package:flutter_film_project1/models/homeJson/myList.dart';
import 'package:flutter_film_project1/models/homeJson/originalList.dart';
import 'package:flutter_film_project1/models/homeJson/popularList.dart';
import 'package:flutter_film_project1/models/homeJson/tendingList.dart';
import 'package:flutter_film_project1/pages/video_detail_page.dart';
import 'package:flutter_film_project1/services/supabaseServices/supabase_service.dart';


class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var animeListItem = <AnimeList>[];
  var myListItem = <Mylist>[];
  var popularListItem = <PopularList>[];
  var originalListItem = <OriginalList>[];
  var trendingListItem = <TrendingList>[];
  

  @override
    void initState() {
      super.initState();
      getData();    
    }    
    getData()async{
    animeListItem = await SupabaseServices().getAnimeList();
    myListItem = await SupabaseServices().getMyList();
    popularListItem = await SupabaseServices().getPopularList();
    originalListItem = await SupabaseServices().getOriginalList();
    trendingListItem = await SupabaseServices().getTrendingList();
    setState(() {
   
    });
    }
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.height - 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 500,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/banner.webp"),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                          height: 500,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                Colors.white.withOpacity(0.85),
                                Colors.black.withOpacity(0.0),
                              ],
                                  end: Alignment.topCenter,
                                  begin: Alignment.bottomCenter))),
                      Container(
                        height: 500,
                        width: size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/title_img.webp",
                              width: 300,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Excting - Sci-Fi Drama - Sci-Fi Adventure",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "My List",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => VideoDetailPage(
                                        videoUrl: "assets/videos/video_1.mp4",
                                      )));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 13, left: 8, top: 2, bottom: 2),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Play",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.white,
                            size: 25,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Info",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "My List${myListItem.length}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => VideoDetailPage(
                                          videoUrl: "assets/videos/video_1.mp4",
                                        )));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children: List.generate(mylist.length, (index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 8),
                                  width: 110,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                          image:AssetImage(
                                        mylist[index]["img"]),
                                          fit: BoxFit.cover)),
                                );
                              }),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Popular on Netflix${popularListItem.length}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => VideoDetailPage(
                                        videoUrl:
                                            "assets/videos/video_2.mp4")));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children:
                                  List.generate(popularList.length, (index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 8),
                                  width: 110,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              popularList[index]['img']),
                                          fit: BoxFit.cover)),
                                );
                              }),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Trending Now${trendingListItem.length}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => VideoDetailPage(
                                        videoUrl:
                                            "assets/videos/video_1.mp4")));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children:
                                  List.generate(trendingList.length, (index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 8),
                                  width: 110,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              trendingList[index]['img']),
                                          fit: BoxFit.cover)),
                                );
                              }),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "Netflix Originals${originalListItem.length}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => VideoDetailPage(
                                        videoUrl:
                                            "assets/videos/video_1.mp4")));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children:
                                  List.generate(originalList.length, (index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 8),
                                  width: 165,
                                  height: 300,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              originalList[index]['img']),
                                          fit: BoxFit.cover)),
                                );
                              }),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: Text(
                          "orime ${animeListItem.length}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => VideoDetailPage(
                                        videoUrl:
                                            "assets/videos/video_1.mp4")));
                          },
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Row(
                              children:
                                  List.generate(animeListItem.length, (index) {
                                return Container(
                                  margin: EdgeInsets.only(right: 8),
                                  width: 110,
                                  height: 160,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              animeList[index]['img']),
                                          fit: BoxFit.cover)),
                                );
                              }),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/logo.ico",
                                width: 35,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                                icon: Icon(
                                  Icons.collections_bookmark,
                                  color: Colors.white,
                                  size: 28,
                                ),
                                onPressed: () {}),
                            IconButton(
                                icon: Image.asset(
                                  "assets/images/profile.jpeg",
                                  fit: BoxFit.cover,
                                  width: 26,
                                  height: 26,
                                ),
                                onPressed: () {}),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "TV Shows",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Text(
                          "Movies",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
