import 'package:go_router/go_router.dart';
import 'package:learning_go_router/screens/screen1.dart';
import 'package:learning_go_router/screens/screen2.dart';

final goRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const Screen1();
    },
  ),
  GoRoute(path: '/screen2', builder: (context, state) => const Screen2(),)
]);
