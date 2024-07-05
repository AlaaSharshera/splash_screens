import 'package:flutter/material.dart';

class CustomScreenModel {
  final List<Color> colors;
  final Widget? images;
  final String? boldtext;
  final String? regulartext;
  const CustomScreenModel(
      {required this.colors,
      required this.images,
      required this.boldtext,
      required this.regulartext});
}
