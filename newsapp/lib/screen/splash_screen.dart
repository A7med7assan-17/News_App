import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screen/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: 130,
      logo: Image.asset('assets/splashScreen.gif'),
      backgroundColor: Colors.white,
      loadingText: const Text("Loading..."),
      navigator: const HomePage(),
      durationInSeconds: 3,
      loaderColor: const Color(0xff1f5fb7),
    );
  }
}
