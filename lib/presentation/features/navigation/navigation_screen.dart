// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myroomfinder/presentation/features/drawer/drawer.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  _BottomNavigationBarScreenState createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  final ValueNotifier<int> pageIndexNotifier = ValueNotifier<int>(0);

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
  ];

  @override
  void dispose() {
    pageIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        title: Text(
          "RoomFinder",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: const MyDrawer(),
      body: ValueListenableBuilder<int>(
        valueListenable: pageIndexNotifier,
        builder: (context, pageIndex, child) {
          return pages[pageIndex];
        },
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavBarItem(context, Icons.home_filled, Icons.home_outlined, 0),
          buildNavBarItem(context, Icons.favorite_rounded,
              Icons.favorite_outline_rounded, 1),
          buildNavBarItem(context, Icons.person, Icons.person_outline, 2),
        ],
      ),
    );
  }

  IconButton buildNavBarItem(BuildContext context, IconData selectedIcon,
      IconData unselectedIcon, int index) {
    return IconButton(
      enableFeedback: false,
      onPressed: () {
        pageIndexNotifier.value = index;
      },
      icon: ValueListenableBuilder<int>(
        valueListenable: pageIndexNotifier,
        builder: (context, pageIndex, child) {
          return Icon(
            pageIndex == index ? selectedIcon : unselectedIcon,
            color: Colors.white,
            size: 35.sp,
          );
        },
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 1",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
