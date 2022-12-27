
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class PageImage extends StatelessWidget {
  const PageImage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 335,
      height: 146,
      child: PageView(
        children: [
          Image.asset(
            "images/ad.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/ad.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/ad.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "images/ad.png",
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
