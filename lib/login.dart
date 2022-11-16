import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () => Get.to(const Splash()),
              child: Text('구글 로그인1'),
            ),
            TextButton(
              onPressed: () => print(2),
              child: Text('애플 로그인'),
            ),
            TextButton(
              onPressed: () => print(3),
              child: Text('네이버 로그인'),
            ),
            TextButton(
              onPressed: () => print(4),
              child: Text('카카오 로그인'),
            ),
          ],
        ),
      ),
    );
  }
}
