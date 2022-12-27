// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  const Texts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xffD7D0FF)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 10),
          child: Text(
            "Upload Prescription",
            style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w700, height: 1),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 8.0,
            top: 5,
          ),
          child: Text(
            "Upload a Prescription and Tell Us what\n you Need. We do the Rest.!",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 13,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              // ignore: unnecessary_const
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                " Flat 25% off\n on Medicines*",
                style: TextStyle(
                    fontWeight: FontWeight.w700, height: 1, fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Container(
                width: 97,
                height: 32,
                decoration: BoxDecoration(
                    color: const Color(0xff5F48E6),
                    borderRadius: BorderRadius.circular(7)),
                child: const Center(
                    child: Text(
                  "Order Now",
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffFFFFFF),
                      fontWeight: FontWeight.w500),
                )),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
