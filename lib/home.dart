import 'package:daily_grind/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'map.dart';
import 'board.dart';
import 'config.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   var currentIdx = 0;
//   List<Widget> pages = [
//     const Map(),
//     const Board(),
//     const Config(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: pages[currentIdx], bottomNavigationBar: bottom());
//   }

//   BottomNavigationBar bottom() {
//     return BottomNavigationBar(
//       currentIndex: currentIdx,
//       // backgroundColor: Colors.amber,
//       selectedItemColor: Colors.amberAccent,
//       items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.add_comment), label: '1'),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.calendar_today),
//           label: '2',
//         ),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: '3',
//             backgroundColor: Colors.amber),
//       ],
//       onTap: (value) {
//         setState(() {
//           currentIdx = value;
//         });
//       },
//     );
//   }
// }

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController homeController =
        Get.put(HomeController(), permanent: false);

    BottomNavigationBar bottom() {
      return BottomNavigationBar(
        currentIndex: homeController.currentIndex.value,
        backgroundColor: Colors.amber,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: '장소1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.reorder),
            label: '게시판',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '설정',
              backgroundColor: Colors.amber),
        ],
        onTap: Get.put(HomeController()).changePage,
      );
    }

    return Obx(() => Scaffold(
          body: Get.put(homeController).currentPage,
          bottomNavigationBar: bottom(),
        ));
  }
}
