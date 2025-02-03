import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learning_go_router/preferences/log_in_preference.dart';
import 'package:learning_go_router/preferences/on_boarding_preference.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              'Your are not logged in !!',
              style: TextStyle(fontSize: 60),
            ),
            ElevatedButton(
                onPressed: () {
                  loggedIn();
                  context.go('/screen3');
                },
                child: const Text('let me log in!!')),
            ElevatedButton(
                onPressed: () {
                  setOnBoardingFalse();
                  
                  context.go('/screen1');
                },
                child: const Text('see on Boarding Again!!')),
          ],
        ),
      ),
    );
  }
}
