import 'package:flutter/material.dart';

class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    List appImage = [
      "images/Drink.png",
      'images/pain.png',
      "images/pr.png",
      "images/6.png",
      "images/7.png",
      'images/8.png',
      "images/Drink.png",
      'images/pain.png',
      "images/pr.png",
    ];

    List appCategory = [
      'Nutritional Drinks',
      'Ayurveda',
      'Vitamins & Supplement',
      'Healthcare Devices',
      "Popular Categories",
      'Diabetes Care',
      'Nutritional Drinks',
      'Ayurveda',
      'Vitamins & Supplement',
    ];
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (((context, index) {
          return Column(
            children: [
              Container(
                width: 94,
                height: 97,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(image: appImage[index])),
              ),
              const SizedBox(height: 12.0),
              Text(
                appCategory[index],
                style: const TextStyle(fontSize: 12),
              ),
            ],
          );
        })));
  }
}
