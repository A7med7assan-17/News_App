import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Screen',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff6750A3),
      ),
      body: const Center(
          child: Text(
        "Welcome To Home Screen",
        style: TextStyle(fontSize: 25),
      )),
    );
  }
}
