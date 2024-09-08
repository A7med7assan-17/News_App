import 'package:flutter/material.dart';
import 'package:newsapp/screen/splash_screen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live News',
      home: SplashScreen(),
    );
  }
}
// flutter build apk --release
// flutter build apk --release --split-per-abi
// flutter build apk --analyze-size
// flutter run --release