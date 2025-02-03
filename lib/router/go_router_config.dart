import 'package:go_router/go_router.dart';
import 'package:learning_go_router/screens/screen1.dart';
import 'package:learning_go_router/screens/screen2.dart';
import 'package:learning_go_router/screens/screen3.dart';
import 'package:learning_go_router/screens/screen4.dart';
import 'package:learning_go_router/screens/screen6.dart';
import 'package:learning_go_router/screens/splash_screen.dart';

final goRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const SplashScreen();
    },
  ),
  GoRoute(
    path: '/screen1',
    builder: (context, state) => const Screen1(),
  ),
  GoRoute(
    path: '/screen2',
    builder: (context, state) => const Screen2(),
  ),
  GoRoute(
    path: '/screen3',
    builder: (context, state) => const Screen3(),
  ),
  GoRoute(
    path: '/screen4',
    builder: (context, state) => const Screen4(),
  ),
  GoRoute(
    path: '/screen6',
    builder: (context, state) => const Screen6(),
  ),
]);
