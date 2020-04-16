import 'package:flutter/material.dart';

var pageList = [
  PageModel(
    imageUrl: "assets/screen1.png",
    body: "For the smartest, hardest-working, most beautiful human I know...",
  ),
  PageModel(
    imageUrl: "assets/screen2.png",
    body: "People all over the world wanted to wish you...",
  ),
  PageModel(
    imageUrl: "assets/screen3.png",
    body: "Happy 32nd Birthday! We Love you.",
  ),
];

List<List<Color>> gradients = [
  [Color(0xFF9708CC), Color(0xFF43CBFF)],
  [Color(0xFFE2859F), Color(0xFFFCCF31)],
  [Color(0xFF5EFCE8), Color(0xFF736EFE)],
];

class PageModel {
  var imageUrl;
  var title;
  var body;
  List<Color> titleGradient = [];
  PageModel({this.imageUrl, this.title, this.body, this.titleGradient});
}
