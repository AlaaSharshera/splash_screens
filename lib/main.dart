import 'package:flutter/material.dart';
import 'package:splash_darktheme/screens/pageslider.dart';

void main() {
  runApp(const Splash());
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageSlider(),
    );
  }
}
