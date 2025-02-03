import 'package:flutter/material.dart';

void main() {
  runApp(const GoRouterLearning());
}

class GoRouterLearning extends StatelessWidget {
  const GoRouterLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router();
  }
}
