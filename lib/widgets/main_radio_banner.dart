import 'package:flutter/material.dart';

import '../pages/player_page.dart';

class MainRadioBanner extends StatelessWidget {
  final String image;
  final double? scale;
  final String playUrl;

  const MainRadioBanner(
      {super.key, required this.image, required this.playUrl, this.scale});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    PlayerPage(playUrl: playUrl, image: image))),
        child: Hero(
          tag: image,
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), color: Colors.white),
            child: Image.asset(
              image,
              scale: scale ?? 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
