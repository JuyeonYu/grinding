import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

// load all the resource here

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ElevatedButton(
            child: Text('enter'), onPressed: () => Get.to(Home())));
  }
}
