import 'package:go_router/go_router.dart';
import 'package:myroomfinder/presentation/features/authentication/login_screen.dart';
import 'package:myroomfinder/presentation/features/routing/navigation_constant.dart';
import 'package:myroomfinder/presentation/features/splash/splash_screen.dart';

class GoRouterNavigation {
  static late GoRouter router;
  GoRouter getRouter(BuildContext, context) {
    router = GoRouter(
      initialLocation: NavigationConstant.initialRoute,
      routes: <GoRoute>[
        GoRoute(
          path: NavigationConstant.initialRoute,
          builder: (context, state) => const SplashScreen(),
        ),
        // ------------authentication--------------------
        GoRoute(
          path: NavigationConstant.loginScreen,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: NavigationConstant.homeScreen,
          builder: (context, state) => const LoginScreen(),
        ),
        GoRoute(
          path: NavigationConstant.homeScreen,
          builder: (context, state) => const LoginScreen(),
        ),
      ],
    );
    return router;
  }
}
