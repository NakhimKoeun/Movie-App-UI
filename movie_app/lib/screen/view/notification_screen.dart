import 'package:flutter/material.dart';
import 'package:movie_app/component/TextStyle.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                "Notification",
                style: SupportWidget.Fontstyle(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
