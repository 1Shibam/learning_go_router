import 'package:flutter/material.dart';
import 'package:learning_go_router/router/go_router_config.dart';

void main() {
  runApp(const GoRouterLearning());
}

class GoRouterLearning extends StatelessWidget {
  const GoRouterLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
    );
  }
}
