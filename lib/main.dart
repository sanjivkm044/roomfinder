import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roomfinder/presentation/features/navigation/navigation_screen.dart';
import 'package:roomfinder/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'RoomFinder',
          theme: lightTheme(context),
          darkTheme: darkTheme(),
          home: const BottomNavigationBarScreen(),
        );
      },
    );
  }
}
