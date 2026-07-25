import 'package:flutter/material.dart';
import 'package:islami_route/core/appassets_colors.dart';
import 'package:islami_route/core/appassets_icons.dart';
import 'package:islami_route/core/appassets_images.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:islami_route/screens/tabs/hadeth_tab.dart';
import 'package:islami_route/screens/tabs/quran_tab.dart';
import 'package:islami_route/screens/tabs/radio_tab.dart';
import 'package:islami_route/screens/tabs/sebha_tab.dart';
import 'package:islami_route/screens/tabs/time_tab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int rentIndex = 0;
  List<Widget> pages = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];

  Map<int, Widget> tabs = {
    0: QuranTab(),
    1: HadethTab(),
    2: SebhaTab(),
    3: RadioTab(),
    4: TimeTab(),
  };

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,

      children: [
        Positioned.fill(
          child: Image.asset(
            AppassetsImages.quranbg,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(AppassetsImages.islamiIcon),
                  Expanded(child: pages[rentIndex]),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              rentIndex = index;
              setState(() {});
              print("selected tab $rentIndex");
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: rentIndex,
            backgroundColor: AppassetsColors.goldColor,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(AppassetsIcons.quranIcon),
                label: "Quran",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(AppassetsIcons.hadethIcon),
                label: "Hadeth",
              ),
              BottomNavigationBarItem(
                icon: Image.asset(AppassetsIcons.sebhaIcon),
                label: "Sebha",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
