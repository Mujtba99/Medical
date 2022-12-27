import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medical/Categories/Categorie.dart';

import 'package:medical/Page_one/Texts.dart';
import 'package:medical/Page_one/pageImage.dart';
import 'package:medical/Page_one/serach.dart';
import 'package:medical/Page_one/sub.dart';
// ignore: unused_import
import 'Itmes/itme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "Categorie": (context) => Categorie(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: true,
            showUnselectedLabels: true,
            backgroundColor: const Color(0xffFDFBF7),
            selectedLabelStyle: const TextStyle(
                color: Color(0xff151921),
                fontWeight: FontWeight.bold,
                fontSize: 9),
            unselectedLabelStyle: const TextStyle(
              color: Color(0xff151921),
              fontSize: 9,
            ),
            iconSize: 28,
            selectedItemColor: const Color(0xffBFB5FF),
            unselectedItemColor: const Color(0xff83848B),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/3.png")),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/Vector.png")),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "images/Cart.png",
                  ),
                ),
                label: 'Lab Test',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/1.png")),
                label: 'Offers',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("images/2.png")),
                label: 'Profile',
              ),
            ],
          ),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey[50],
            // ignore: sized_box_for_whitespace
            leading: Image.asset(
              "images/User .png",
            ),
            title: const Text("Medicine",
                style: TextStyle(color: Color(0xff151921), fontSize: 16)),
            actions: [Image.asset("images/Cart.png")],
          ),
          body: const App()),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: sized_box_for_whitespace
      child: SizedBox(
        width: 305,
        child:
        ListView(children: [
          //Serach
          const Serach(),

          const SizedBox(
            height: 20,
          ),
//text Descreption
          const Texts(),

          const SizedBox(
            height: 15,
          ),
          //Page View Image
          const PageImage(),
          const SizedBox(
            height: 10,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Categories",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff151921)),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed("Categorie");
                },
                child: const Text(
                  "See All  >",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff151921)),
                ),
              ),
            ],
          ),
          //sub
          const Grid()
        ]),
      ),
    );
  }
}
