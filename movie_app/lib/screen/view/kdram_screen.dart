import 'package:flutter/material.dart';
import 'package:movie_app/component/fake_data/gridview.dart';

class KdramaScreen extends StatelessWidget {
  const KdramaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kdrama"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount:
                MediaQuery.of(context).orientation == Orientation.portrait
                    ? 2
                    : 4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            childAspectRatio: 0.7),
        itemCount: gridkdrama.length,
        itemBuilder: (context, index) {
          return Image.network(gridkdrama[index]);
        },
      ),
    );
  }
}
