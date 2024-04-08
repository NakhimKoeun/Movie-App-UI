import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
import 'package:movie_app/component/TextStyle.dart';
import 'package:movie_app/component/fake_data/listactree.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(color: Colors.orange),
            child: Stack(
              children: [
                Container(
                  height: 300,
                  child: Image.network(
                    "https://fastly-s3.allmovie.com/cms/21934/allmovie_home_dune2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    left: 150,
                    bottom: 270,
                    child: Row(
                      children: [
                        Text(
                          "DUNE",
                          style: SupportWidget.formal(),
                        )
                      ],
                    )),
                Positioned(
                    bottom: 250,
                    left: 110,
                    child: Row(
                      children: [
                        Text(
                          "Action, Power, Megice",
                          style: SupportWidget.listfont(),
                        )
                      ],
                    )),
                Positioned(
                    bottom: 20,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              width: 100,
                              "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcR1HYYqIoovqLVr7DQU9tevo_bMrzQqJ7LQiVnjyK1x5BUHqrjFB_JDtftcR1Sxo1cPE0fPmg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 190,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Preview",
                                    style: SupportWidget.StyleFont(),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.watch,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "300min",
                                    style: SupportWidget.StyleFont(),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Preview",
                                    style: SupportWidget.StyleFont(),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text("Watchlist"),
                                        Icon(Icons.list)
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text("Favorit"),
                                        Icon(Icons.favorite)
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text("Share"),
                                        Icon(Icons.share)
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Overview",
                  style: SupportWidget.form(),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "Dune: Part Two is a 2024 American epic science fiction film directed and produced by Denis Villeneuve, who co-wrote the screenplay with Jon Spaihts. The sequel to Dune (2021), it is the second of a two-part adaptation of the 1965 novel Dune by Frank Herbert. It follows Paul Atreides as he unites with the Fremen people of the desert planet Arrakis to wage war against House Harkonnen. Timothée Chalamet, Zendaya, Rebecca Ferguson, Josh Brolin, Dave Bautista, Stellan Skarsgård, Charlotte Rampling, and Javier Bardem reprise their roles from the first film, with Austin Butler, Florence Pugh, Christopher Walken, Léa Seydoux, and Souheila Yacoub joining the ensemble cast."),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Cast",
                      style: SupportWidget.Fontstyle(),
                    ),
                    Text(
                      "See more",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Container(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: stories.length,
                    itemBuilder: (context, index) {
                      ListData story = stories[index];
                      return Container(
                        margin: const EdgeInsets.only(right: 10, left: 10),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(story.image),
                              ),
                            ),
                            Text(
                              story.name,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
