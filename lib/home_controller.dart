import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'map.dart';
import 'board.dart';
import 'config.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final currentIndex = 0.obs;

  List<Widget> pages = [
    const Map(),
    const Board(),
    const Config(),
  ];

  Widget get currentPage => pages[currentIndex.value];

  void changePage(int index) {
    currentIndex.value = index;
  }
}
