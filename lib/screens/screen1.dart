import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_go_router/preferences/on_boarding_preference.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'you should see the onboarding screen!!',
              style: TextStyle(fontSize: 60),
            ),
            ElevatedButton(
                onPressed: () {
                  setOnBoardingTrue();
                  context.go('/screen2');
                },
                child: const Text('i have seen it now!!'))
          ],
        ),
      ),
    );
  }
}
