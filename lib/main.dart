import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myroomfinder/firebase_options.dart';
import 'package:myroomfinder/presentation/features/authentication/login_screen.dart';
import 'package:myroomfinder/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //     providers: [],
    //     builder: (context, child) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          // MaterialApp.router(
          // routerConfig: GoRouterNavigation.getRoute(context),
          title: 'RoomFinder',
          debugShowCheckedModeBanner: false,
          theme: lightTheme(context),
          darkTheme: darkTheme(),
          builder: (context, child) {
            return Overlay(
              initialEntries: [
                OverlayEntry(
                  builder: (context) => MediaQuery(
                    data: MediaQuery.of(context).copyWith(
                      textScaler: const TextScaler.linear(1.0),
                    ),
                    child: GestureDetector(
                      onTap: () =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      child: child ?? const SizedBox.shrink(),
                    ),
                  ),
                ),
              ],
            );
          },
          home: const LoginScreen(),
        );
      },
    );
    // });
  }
}
