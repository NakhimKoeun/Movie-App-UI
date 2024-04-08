import 'package:flutter/material.dart';
import 'package:movie_app/component/fake_data/gridview.dart';

class AnimeScreen extends StatelessWidget {
  const AnimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anime"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? 2
                    : 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            childAspectRatio: 0.7,
          ),
          itemCount: gridanime.length,
          itemBuilder: (context, index) {
            return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(gridanime[index]));
          },
        ),
      ),
    );
  }
}
