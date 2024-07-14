import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:roomfinder/firebase_options.dart';
import 'package:roomfinder/presentation/features/navigation/navigation_screen.dart';
import 'package:roomfinder/theme/theme.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        return Builder(builder: (newcontext) {
          return MaterialApp(
            builder: (context, child) {
              return Overlay(
                initialEntries: [
                  if (child != null) ...[
                    OverlayEntry(
                      builder: (context) => MediaQuery(
                        data: MediaQuery.of(context).copyWith(
                          textScaler: const TextScaler.linear(1.0),
                        ),
                        child: GestureDetector(
                          onTap: () =>
                              FocusManager.instance.primaryFocus?.unfocus,
                        ),
                      ),
                    ),
                  ],
                ],
              );
            },
            debugShowCheckedModeBanner: false,
            title: 'RoomFinder',
            theme: lightTheme(context),
            darkTheme: darkTheme(),
            home: const BottomNavigationBarScreen(),
          );
        });
      },
    );
  }
}
