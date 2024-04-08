import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/component/TextStyle.dart';
import 'package:movie_app/component/fake_data/listview.dart';
import 'package:movie_app/component/fake_data/pageview.dart';
// ignore: unused_import
import 'package:movie_app/controller/pageview_controller.dart';
import 'package:movie_app/screen/view/anime_screen.dart';
import 'package:movie_app/screen/view/kdram_screen.dart';
import 'package:movie_app/screen/view/movie_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PostScreen extends StatefulWidget {
  PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  // ignore: unused_field
  Animation<double>? _nextPage;

  int _currentPage = 0;

  final pageviewcontroller = PageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      pageviewcontroller.animateToPage(
        _currentPage,
        duration: Duration(microseconds: 350),
        curve: Curves.easeIn,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Movie App",
          style: SupportWidget.homefont(),
        ),
        leading: Icon(
          Icons.settings,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 18,
                backgroundImage: NetworkImage(
                    "https://static.wikia.nocookie.net/among-us-wiki/images/8/84/Among_Us.png/revision/latest?cb=20201019142953"),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: PageView.builder(
                controller: pageviewcontroller,
                itemCount: listpage.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(listpage[index]),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SmoothPageIndicator(
                controller: pageviewcontroller, // PageController
                count: 3,
                effect: WormEffect(), // your preferred effect
                onDotClicked: (index) {}),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Movie",
                    style: SupportWidget.listfont(),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => MovieScreen());
                      },
                      child: Text("See more"))
                ],
              ),
            ),
            Container(
              height: 300,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lismovie.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(lismovie[index]),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Anime",
                    style: SupportWidget.listfont(),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => AnimeScreen());
                      },
                      child: Text("See more"))
                ],
              ),
            ),
            Container(
              height: 300,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lismovie.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(listanime[index]),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Kdrama",
                    style: SupportWidget.listfont(),
                  ),
                  TextButton(
                      onPressed: () {
                        Get.to(() => KdramaScreen());
                      },
                      child: Text("See more"))
                ],
              ),
            ),
            Container(
              height: 300,
              width: 400,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lismovie.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(listkdrama[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
