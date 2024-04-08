import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
// ignore: unused_import
import 'package:movie_app/component/TextStyle.dart';
import 'package:movie_app/component/fake_data/gridview.dart';
import 'package:movie_app/screen/view/movie_detail_screen.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Movie",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? 2
                        : 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7),
            itemCount: girdmovie.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(() => MovieDetailScreen());
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    girdmovie[index],
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
