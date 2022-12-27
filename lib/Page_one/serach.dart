import 'package:flutter/material.dart';

class Serach extends StatelessWidget {
  const Serach({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
          color: const Color(0xffF3F2E9),
          borderRadius: BorderRadius.circular(13)),
      child: InkWell(
        onTap: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text("Search Medicine & Health Products"),
            Icon(Icons.search),
          ],
        ),
      ),
    );
  }
}
