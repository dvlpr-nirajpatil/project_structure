import 'package:go_router/go_router.dart';
import 'package:test/views/auth_screens/sign_in/sign_in.dart';
import 'package:test/views/auth_screens/sign_up/sign_up.dart';
import 'package:test/views/splash_screen/splash_screen.dart';

class AppRoutes {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: SplashScreen.id,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: '/auth',
        name: SignInScreen.id,
        builder: (context, state) => SignInScreen(),
        routes: [
          GoRoute(
            path: 'signup',
            name: SignUpScreen.id,
            builder: (context, state) => SignUpScreen(),
          )
        ],
      )
    ],
  );
}
