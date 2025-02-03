import 'package:go_router/go_router.dart';
import 'package:learning_go_router/screens/screen1.dart';

final goRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const Screen1();
    },
  )
]);
