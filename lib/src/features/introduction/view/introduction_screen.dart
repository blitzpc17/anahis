import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:proyecto_secciones/src/features/home/view/home_screen.dart';
import 'package:proyecto_secciones/src/utils/image_assets.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key});

  static String routeName = "introduction";
  static Widget route(BuildContext context) => const IntroductionScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            HomeScreen.routeName,
          );
        },
        child: Center(
          child: Image.asset(
            ImageAssets.intr,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
