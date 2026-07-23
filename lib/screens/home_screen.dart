import 'package:flutter/material.dart';
import 'package:islami_route/core/appassets_images.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppassetsImages.quranbg,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}
